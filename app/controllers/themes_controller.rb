class ThemesController < ApplicationController
    def new
        @themes = Theme.new
    end
    
    def create
    end
end
