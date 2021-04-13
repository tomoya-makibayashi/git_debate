class Theme < ApplicationRecord
    has_many :opinions
    
    validates_presence_of :title, :text
end