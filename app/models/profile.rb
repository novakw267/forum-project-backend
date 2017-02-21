# frozen_string_literal: true

# :nodoc:
class Profile < ApplicationRecord
  belongs_to :user
  has_many :blog_templates
  validates :username, presence: true
  validates :favorite_genre, presence: true
  validates :favorite_band, presence: true
end
