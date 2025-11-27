class CreateProjects < ActiveRecord::Migration[8.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :active, default: false
      t.string :stage, default: "development"

      t.timestamps
    end
  end
end
