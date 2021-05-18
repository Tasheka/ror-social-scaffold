class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(2)
    @friend_requests = @user.pending_friends
    @posts = @user.posts.ordered_by_most_recent
  end
end
