# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authorized, only: %i[new create welcome]

  def new; end

  def login; end

  def create
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/index'
    else
      redirect_to '/login'
    end
  end

  def page_requires_login; end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
