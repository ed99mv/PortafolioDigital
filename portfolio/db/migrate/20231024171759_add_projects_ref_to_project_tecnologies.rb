class AddProjectsRefToProjectTecnologies < ActiveRecord::Migration[7.0]
  def change
    add_reference :project_tecnologies, :projects, null: false, foreign_key: true
  end
end
