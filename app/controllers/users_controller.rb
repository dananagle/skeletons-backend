class UsersController < ApplicationController
  def create
    @user = User.new params.require(:user).permit(:email, :password, :password_confirmation)
    @user.token = SecureRandom.hex(8)
    @user.user_name = "#{['ape','bear','cat','deer','elk','ferret','giraffe','hippo','iguana','jaguar'].sample}#{[*1..17].sample}"
    if @user.save
      render status: 201
    else
      render json: @user.errors, status: 422
    end
  end

  def update

  end

  def delete
  end

end
