class AddUserToBlogTemplates < ActiveRecord::Migration[5.0]
  def change
    add_reference :blog_templates, :user, index: true, foreign_key: true, null: false
  end
end
