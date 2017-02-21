# frozen_string_literal: true

# :nodoc:
class AddProfileToBlogTemplates < ActiveRecord::Migration[5.0]
  def change
    add_reference :blog_templates, :profile, index: true, foreign_key: true,
                                             null: false
  end
end
