class ConclusionsController < ApplicationController
    def new
        @theme = Theme.find(params[:theme_id])
        @conclusion = Conclusion.new
        @opinions = Opinion.where(theme_id: params[:theme_id])
        id = @opinions.pluck(:user_id)
        @users = User.where(id: id)
    end
    
    
end