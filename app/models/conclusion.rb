class Conclusion < ApplicationRecord
    
    belongs_to :theme
    
    validates_presence_of :text, :foragainst, :winner_id, :theme_id
end
