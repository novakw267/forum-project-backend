# frozen_string_literal: true

# :nodoc:
class Profile < ApplicationRecord
  validates :username, presence: true
  validates :favorite_band, presence: true
  validates :favorite_genre, presence: true
end
