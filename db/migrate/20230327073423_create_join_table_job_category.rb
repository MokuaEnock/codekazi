class CreateJoinTableJobCategory < ActiveRecord::Migration[7.0]
  def change
    create_join_table :jobs, :categories do |t|
      t.index [:job_id, :category_id]
      t.index [:category_id, :job_id]
    end
  end
end
