class ThemesController < ApplicationController
    def new
        @themes = Themes.new
    end
    
    def create
    end
end
