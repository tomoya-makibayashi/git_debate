class OpinionsController < ApplicationController
    def new
        @theme = Theme.find(params[:theme_id]) 
        @opinion = Opinion.new
    end
    
    def create
        opinion = Opnion.create
    end
end
