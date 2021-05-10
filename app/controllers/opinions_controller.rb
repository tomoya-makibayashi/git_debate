class OpinionsController < ApplicationController
    
    before_action :redirect, only: :new
    
    def new
        @theme = Theme.find(params[:theme_id]) 
        @opinion = Opinion.new
        @opinions = Opinion.where(theme_id: params[:theme_id])
        id = @theme.user_id
        @user = User.where(id: id)
    end
    
    def create
        Opinion.create(create_opinion_params)
        redirect_to :root and return
    end
    
    private
    def create_opinion_params
        params.require(:opinion).permit(:foragainst, :reason, :url).merge(user_id: current_user.id, theme_id: params[:theme_id])
    end
    
    def redirect
        if Opinion.exists?(user_id: current_user.id)
            redirect_to :root
        end
    end
end