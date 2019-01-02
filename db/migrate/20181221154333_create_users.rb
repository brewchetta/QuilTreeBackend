class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :image_url
      t.string :image_credit
      t.string :image_credit_link

      t.timestamps
    end
  end
end
