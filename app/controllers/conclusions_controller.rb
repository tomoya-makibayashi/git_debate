class ConclusionsController < ApplicationController
    
    before_action :redirect, only: :new
    
    def new
        @theme = Theme.find(params[:theme_id])
        @conclusion = Conclusion.new
        @opinions = Opinion.where(theme_id: params[:theme_id])
        id = @opinions.pluck(:user_id)
        @users = User.where(id: id)
    end
    
    def create
        Conclusion.create!(create_conclusion_params)
        theme = Theme.find(params[:theme_id])
        theme.update(update_conclusion_params)
        redirect_to :root and return
    end
    
    def show
        @theme = Theme.find(params[:id])
        @opinions = Opinion.where(theme_id: params[:id])
        conclusion = @theme.conclusion
        @user = User.find(conclusion.winner_id)
    end
    
    private
    def create_conclusion_params
        params.require(:conclusion).permit(:text, :foragainst, :winner_id).merge(theme_id: params[:theme_id])
    end
    
    def update_conclusion_params
        params.require(:conclusion).permit(:status)
    end
    
    def redirect
        if Conclusion.exists?(theme_id: params[:theme_id])
            redirect_to :root
        end
    end
end