class ThemesController < ApplicationController
    
    def new
        @themes = Theme.new
    end
    
    def create
        Theme.create(create_params)
        redirect_to :root and return
    end
    
    def show
        @theme = Theme.find(params[:id])
        @opinions = Opinion.where(theme_id: params[:id])
    end
    
    private
    def create_params
        params.require(:theme).permit(:title, :text, :status).merge(user_id: current_user.id)
    end
end