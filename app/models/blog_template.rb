# frozen_string_literal: true

# :nodoc:
class BlogTemplate < ApplicationRecord
  validates :blog_title, presence: true
  validates :subject, presence: true
  validates :body, presence: true
end
