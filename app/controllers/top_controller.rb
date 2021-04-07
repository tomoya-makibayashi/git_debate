class TopController < ApplicationController
    def index
        @themes = Theme.order('created_at DESC')
    end
end
