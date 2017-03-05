# frozen_string_literal: true

# :nodoc:
class BlogTemplateSerializer < ActiveModel::Serializer
  attributes :id, :blog_title, :subject, :body

  # def editable
  #   scope == object.user
  # end
end
