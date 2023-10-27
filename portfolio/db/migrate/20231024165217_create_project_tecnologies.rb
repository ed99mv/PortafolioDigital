class CreateProjectTecnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :project_tecnologies do |t|

      t.timestamps
    end
  end
end
