# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles, &:timestamps
  end
end
