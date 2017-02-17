# frozen_string_literal: true

# :nodoc:
class Profile < ApplicationRecord
  validates :username, presence: true
end
