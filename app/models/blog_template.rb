# frozen_string_literal: true

# :nodoc:
class BlogTemplate < ApplicationRecord
  belongs_to :profile
  delegate :blog_templates, to: :profiles
  validates :blog_title, presence: true
  validates :subject, presence: true
  validates :body, presence: true
end
