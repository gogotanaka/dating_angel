class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  before_action :authenticate_user, only: [:edit]
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :name, :description, :age, :avatar, :angel, :profile)
    end

    def authenticate_user
      unless current_user && current_user == @user
        redirect_to root_path
      end
    end

end
