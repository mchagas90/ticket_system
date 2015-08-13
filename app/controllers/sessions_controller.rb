class SessionsController < ApplicationController

  skip_before_action :ensure_logged_in, only: [:new, :create]

  layout 'session'

  def create

    user = User.where(login: params[:login]).where(password: params[:password]).first

    if user.nil?
      redirect_to root_path, notice: 'Usuário ou Senha inválido(s)'
    else
      session[:user_id] = user.id
      redirect_to root_path
    end

  end

  def destroy
    reset_session
    redirect_to signin_path
  end

  def new
  end

end
