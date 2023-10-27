class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :string
      t.string :responsabilities
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end
