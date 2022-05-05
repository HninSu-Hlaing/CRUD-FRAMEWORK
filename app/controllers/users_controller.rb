class UsersController < ApplicationController
  def index
    @users = UsersService.listAll
  end
  def create 
    isSaveUser = UsersService.createUser(users_params)
    if isSaveUser
        redirect_to root_path
    end
  end
  def show
    @users = UsersService.findUserById(params[:id])
  end
  def edit
    @users = UsersService.findUserById(params[:id])
  end
  def update
    isUpdateUser = UsersService.updateUser(params[:id],user_params)
    if isUpdateUser
        redirect_to root_path
    else
        render :edit
    end
  end
  def destroy
    UsersService.deleteUser(params[:id])
    redirect_to root_path
  end
  private
  def users_params
    params.require(:users).permit(:name,:email,:phone,:password)
  end
  def user_params
    params.require(:user).permit(:name,:email,:phone,:password)
  end
end
