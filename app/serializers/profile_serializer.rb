# frozen_string_literal: true

# :nodoc:
class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :favorite_genre, :favorite_band, :editable
  def editable
    scope == object.user
  end

  def user
    object.user.pluck(:id)
  end
end
