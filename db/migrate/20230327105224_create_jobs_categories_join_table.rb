class CreateJobsCategoriesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs_categories, id: false do |t|
      t.references :job, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end

    add_index :jobs_categories, [:job_id, :category_id]
  end
end
