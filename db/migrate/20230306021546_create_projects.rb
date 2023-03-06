class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_name, null: false
      t.text :description
      t.string :link
      t.datetime :startedAt, null: false
      t.datetime :completedAt, null: false
      t.integer :user_id, null: false
      t.integer :skill_id, null: false
    end
  end
end
