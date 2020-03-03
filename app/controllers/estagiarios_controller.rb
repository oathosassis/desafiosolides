class EstagiariosController < ApplicationController
  before_action :bloquear_acesso, except: [:edit, :update]
  before_action :authorize, except: [:new, :create]

  def new
    @estagiario = Estagiario.new
  end

  def create
  	@estagiario = Estagiario.new(estagiario_params)
  	if @estagiario.save
      flash[:success] = "Usuário criado com sucesso!"
      redirect_to login_path
    else
      render 'new'
    end
  end

  def edit
    @estagiario = Estagiario.find(params[:id])
  end

  def update
    @estagiario = Estagiario.find(params[:id])
    if @estagiario.update_attributes(estagiario_params)
      redirect_to edit_estagiario_path(current_user)
    else
      render 'edit'
    end
  end

  private
  def estagiario_params
    params.require(:estagiario).permit(:nome, :sobrenome, :sexo, :cpf, :email, :celular, :user, :password, :password_confirmation)
  end
end
