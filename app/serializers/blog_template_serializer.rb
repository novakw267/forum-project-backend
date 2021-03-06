# frozen_string_literal: true

# :nodoc:
class BlogTemplateSerializer < ActiveModel::Serializer
  attributes :id, :blog_title, :subject, :body, :editable

  def editable
    scope == object.profile.user
  end
end
