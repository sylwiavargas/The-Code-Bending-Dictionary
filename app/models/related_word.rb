class RelatedWord < ApplicationRecord
    belongs_to :word_one, class_name: "Word"
    belongs_to :word_two, class_name: "Word"

    # Validation so that a word can only be related to another only once
    validates :word_two_id, uniqueness: {scope: :word_one_id}
    
    # Documentation: https://collectiveidea.com/blog/archives/2015/07/30/bi-directional-and-self-referential-associations-in-rails
    after_create :create_inverse, unless: :has_inverse?
    after_destroy :destroy_inverses, if: :has_inverse?

    private

    def create_inverse
        self.class.create(inverse_attributes)
    end

    def destroy_inverses
        self.class.where(inverse_attributes).destroy_all
    end

    def has_inverse?
        self.class.exists?(inverse_attributes)
    end

    def inverse_attributes
        { word_one_id: self.word_two_id, word_two_id: self.word_one_id }
    end

end
