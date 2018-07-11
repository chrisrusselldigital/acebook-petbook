class CreateSocialCapybaras < ActiveRecord::Migration[5.1]
  def change
    create_table :social_capybaras do |t|
      t.string :member
    end
  end
end
