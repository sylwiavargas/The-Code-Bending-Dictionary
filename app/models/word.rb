class Word < ApplicationRecord

    has_many :favorites, dependent: :destroy
    has_many :definitions, -> {order ("created_at DESC")}, dependent: :destroy
    validates :content, length: { minimum: 2, maximum: 60}

    def to_s
        self.content.titleize
    end
    
end
