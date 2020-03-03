class SessoesController < ApplicationController
  before_action :bloquear_acesso, except: [:destroy]
  before_action :authorize, only: [:destroy]

  def new
  end

  def create
  	estagiario = Estagiario.find_by(user: params[:session][:user])
    if estagiario && estagiario.authenticate(params[:session][:password])
      login(estagiario)
      redirect_to jornadas_path
 	  else
      if !estagiario
        flash.now[:danger] = 'Usuário não encontrado.'
 	    else
        flash.now[:danger] = 'Senha inválida, tente novamente.'
      end
      render 'new'
 	  end
  end

  def destroy
	  logout
    redirect_to root_url
  end
end
