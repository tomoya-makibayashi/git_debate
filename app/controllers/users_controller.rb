class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @conclusions = Conclusion.all
        if @conclusions.exists?(winner_id: @user.id)
            ids = Conclusion.where(winner_id: @user.id).pluck(:theme_id)
            @themes = Theme.where(id: ids)
        end
    end
    
    def edit
    end
    
    def update
        current_user.update(update_params)
    end
    
    private
    def update_params
        params.require(:user).permit(:text, :image)
    end
end