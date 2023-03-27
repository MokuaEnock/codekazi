class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :location
      t.integer :category_id
      t.string :salary_range
      t.string :employment_type
      t.integer :years_of_experience
      t.string :education_level
      t.datetime :posted_at
      t.datetime :expires_at
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
