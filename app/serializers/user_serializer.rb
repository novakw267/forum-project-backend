# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  def profiles
    object.profile.pluck(:id)
  end
end
