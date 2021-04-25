class OpinionsController < ApplicationController
    def new
        @theme = Theme.find(params[:theme_id]) 
        @opinion = Opinion.new
    end
    
    def create
        Opinion.create(create_opinion_params)
        redirect_to :root and return
    end
    
    private
    def create_opinion_params
        params.require(:opinion).permit(:foragainst, :reason, :url).merge(user_id: current_user.id, theme_id: params[:theme_id])
    end
end