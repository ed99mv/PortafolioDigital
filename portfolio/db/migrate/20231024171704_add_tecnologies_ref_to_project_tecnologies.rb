class AddTecnologiesRefToProjectTecnologies < ActiveRecord::Migration[7.0]
  def change
    add_reference :project_tecnologies, :tecnologies, null: false, foreign_key: true
  end
end
