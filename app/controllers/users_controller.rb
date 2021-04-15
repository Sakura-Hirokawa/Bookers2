class UsersController < ApplicationController
  def index
    # @user誰がログインしているのか
    @user=current_user
    @book=Book.new
    @books=Book.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end
