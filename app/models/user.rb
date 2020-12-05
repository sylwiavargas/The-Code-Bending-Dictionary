# frozen_string_literal: true

class User < ApplicationRecord
  after_initialize :init_admin

  has_many :favorites, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :words, through: :favorites
  has_many :definitions
  

  default_scope { order(username: :asc) }

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 

  has_secure_password

  def init_admin
    self.admin = false if admin.nil?
  end

end
