class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :content, null: false, unique: true
      t.belongs_to :retro
      t.belongs_to :emotion_type

      t.timestamps
    end
  end
end
