class UsersController < ApplicationController
  def index
    # @user誰がログインしているのか、idつけるとエラー
    @user=current_user
    @users=User.all
    @book=Book.new
    @books=Book.all
  end
  
  def show
    @user=User.find(params[:id])
    @book=Book.new
    @books=Book.where(user_id:@user.id)
  end
  
  def edit
    @user=User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user)
    end
  end
  
  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def destroy
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
