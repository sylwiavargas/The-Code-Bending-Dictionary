class Word < ApplicationRecord
    after_initialize :init

    has_many :favorites, dependent: :destroy
    has_many :definitions, -> {order ("created_at DESC")}, dependent: :destroy
    validates :content, length: { minimum: 2, maximum: 60}

    has_many :rel_word_models, foreign_key: :word_one_id, class_name: "RelatedWord", dependent: :destroy
    has_many :related_words, through: :rel_word_models, source: :word_two
    has_many :technologies, through: :definitions

    def init
        self.approved = false if self.approved.nil?
    end

    def to_s
        self.content.titleize
    end
    
end
