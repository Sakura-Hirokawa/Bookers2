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
    @book=@user.books
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end
