# frozen_string_literal: true

# :nodoc:
class AddUserToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :user, index: true, foreign_key: true, null: false
  end
end
