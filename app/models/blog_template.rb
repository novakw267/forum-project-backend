# frozen_string_literal: true

# :nodoc:
class BlogTemplate < ApplicationRecord
  belongs_to :profile
  validates :blog_title, presence: true
  validates :subject, presence: true
  validates :body, presence: true
end
