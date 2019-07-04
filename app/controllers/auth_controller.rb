class AuthController < ApplicationController

  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def autoLogin
    if current_user
      render json: current_user
    else
      render json: {errors: "Nah dog those be my cookies"}
    end
  end

  # private
  #
  # def user_login_params
  #   params.require(:user).permit(:name, :password)
  # end
end
