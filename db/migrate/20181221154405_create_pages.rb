class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer :number
      t.integer :story_id
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
