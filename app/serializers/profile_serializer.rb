# frozen_string_literal: true

# :nodoc:
class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :favorite_genre, :favorite_band
end
