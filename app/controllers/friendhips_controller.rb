class FriendhipsController < ApplicationController

      def index
        @friend_requests = current_user.pending_friends
      end
    
      def create
        user = current_user.friendhips.build(recieved_user: User.find(params[:id].to_i))
      end
end