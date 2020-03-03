class JornadasController < ApplicationController
  
  def index 
  	@iniciar = current_user.jornadas.find_by(data: Date.today).nil?
  	if @iniciar
  	  @jornada = Jornada.new
  	  @interromper, @retomar, @terminar = false, false, false
  	else
  	  ultima_jornada = current_user.jornadas.where(data: Date.today).last
  	  if ultima_jornada.Interrompida?
  	  	@retomar = true
  	  	@jornada = Jornada.new
  	  	@interromper, @terminar = false, false
  	  elsif ultima_jornada.Terminada?
  	  	@interromper, @retomar, @terminar = false, false, false
  	  else
  	  	@interromper, @terminar = true, true
  	  	@jornada = ultima_jornada
  	  	@retomar = false
  	  end
  	end

    @atual_jornada = current_user.jornadas.where(data: Date.today)
    @ultimas_jornadas = current_user.jornadas.where(data: (Date.today-6.days)..(Date.today-1.day))
  end

  def create
  	jornada_params = {}
  	jornada_params[:data] = Date.today
  	jornada_params[:hora_inicial] = Time.now
  	jornada_params[:estagiario_id] = current_user.id
  	@jornada = Jornada.new(jornada_params)
  	
  	if @jornada.save
  	  flash.now[:success] = "Sucesso!"
    else
      flash.now[:danger] = "Erro!"
    end
    redirect_to jornadas_path
  end

  def update
  	jornada = Jornada.find(params[:id]) 
    if jornada.update_attributes(:tipo => params[:jornada][:tipo], :hora_final => Time.now)
      flash[:success] = "Sucesso!"
    else
      flash[:danger] = "Erro!"
    end
    redirect_to jornadas_path
  end

  def minhas_jornadas
    erro_pesquisa = false
    if !params[:data_inicial].present? && !params[:data_final].present?
      erro_pesquisa = true
    elsif !params[:data_inicial].present?
      @data_final = params[:data_final].to_date
      if @data_final > Date.today
        flash.now[:danger] = "Não é possível realizar uma pesquisa com datas futuras!"
        erro_pesquisa = true
      else
        @data_inicial = @data_final.beginning_of_month
      end
    elsif !params[:data_final].present?
      @data_inicial = params[:data_inicial].to_date
      if @data_inicial > Date.today
        flash.now[:danger] = "Não é possível realizar uma pesquisa com datas futuras!"
        erro_pesquisa = true
      else
        @data_final = @data_inicial.end_of_month
        if @data_final > Date.today
          @data_final = Date.today
        end
      end
    else
      max_dias = 30
      @data_inicial = params[:data_inicial].to_date
      @data_final = params[:data_final].to_date
      if (@data_inicial > Date.today) || (@data_final > Date.today)
        flash.now[:danger] = "Não é possível realizar uma pesquisa com datas futuras!"
        erro_pesquisa = true
      end
      if (!erro_pesquisa) && (@data_final < @data_inicial)
        flash.now[:danger] = "Não é possível realizar uma pesquisa com datas inconsistentes!"
        erro_pesquisa = true
      end
      dif_dias = (@data_final - @data_inicial).to_i
      if (!erro_pesquisa) && (dif_dias > max_dias)
        flash.now[:danger] = "A pesquisa ultrapassa o intervalo limite de #{max_dias} dias!"
        erro_pesquisa = true
      end
    end
    if erro_pesquisa
      @data_inicial = Date.today.beginning_of_month
      @data_final = Date.today
    end

    @minhas_jornadas = current_user.jornadas.where(data: @data_inicial.beginning_of_day..@data_final.end_of_day)
  end
end
