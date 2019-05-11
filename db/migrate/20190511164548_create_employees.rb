class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.references :department
      t.references :branch

      t.timestamps
    end
  end
end
