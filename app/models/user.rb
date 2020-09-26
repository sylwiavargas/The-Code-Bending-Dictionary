class User < ApplicationRecord
    has_many :favorites, -> {order ("priority_level DESC")}, dependent: :destroy
    has_many :words, through: :favorites
    default_scope { order(username: :asc)}

    validates :username, presence: true, uniqueness: true

    has_secure_password

end
