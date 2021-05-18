class FriendhipsController < ApplicationController

      def index
          @friendhips = current_user.friend_requests.uniq
      end
    
      def create
        user = current_user.friendhips.build(recieved_user: User.find(params[:id].to_i))
      end
end