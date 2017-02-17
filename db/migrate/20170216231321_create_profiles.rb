# frozen_string_literal: true
class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username, null: false
      t.string :favorite_genre, null: false
      t.string :favorite_band, null: false

      t.timestamps null: false
    end
  end
end
