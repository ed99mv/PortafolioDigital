class AddSkillRefToUserSkill < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_skills, :skill, null: false, foreign_key: true
  end
end
