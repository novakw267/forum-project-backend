class CreateBlogTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_templates do |t|

      t.timestamps
    end
  end
end
