class CreateSocialMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :social_media do |t|
      t.string :social_name
      t.string :social_link

      t.timestamps
    end
  end
end
