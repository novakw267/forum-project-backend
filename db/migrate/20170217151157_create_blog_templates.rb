# frozen_string_literal: true

# :nodoc:
class CreateBlogTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_templates do |t|
      t.string :blog_title, null: false
      t.string :subject, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
