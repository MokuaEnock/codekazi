class AddSearchableContentToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :searchable_content, :text
  end
end
