class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    user = User.new(user_params)
    if user.save
      user.create_list
      session[:user_id] = user.id
      redirect_to :root
    else
      flash[:warning] = 'User not saved properly!'
      redirect_to '/signup'
    end
  end

  def update
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end


    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
