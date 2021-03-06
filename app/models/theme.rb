class Theme < ApplicationRecord
    has_many :opinions
    belongs_to  :user
    has_one :conclusion
    
    validates_presence_of :title, :text
    enum status: { 受付中: 0, 受付終了: 1}
end