class RelationsController < ApplicationController
    def create
        @relation = Relation.new(user_id: @current_user.id, follow_id: params[:user_id])
        @relation.save
        redirect_to("/users/index")
    end
    
    def destroy
        @relation = Relation.find_by(user_id: @current_user.id, follow_id: params[:user_id])
        @relation.destroy
        redirect_to("/users/index")
    end
    
end