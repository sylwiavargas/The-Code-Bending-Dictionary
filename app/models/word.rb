class Word < ApplicationRecord
    after_initialize :init

    has_many :favorites, dependent: :destroy
    has_many :definitions, -> {order ("created_at DESC")}, dependent: :destroy
    validates :content, length: { minimum: 2, maximum: 60}

    def init
        self.approved = false if self.approved.nil?
    end

    def to_s
        self.content.titleize
    end
    
end
