class CreateEmotionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :emotion_types do |t|
      t.string :emotion_type, null: false, unique: true

      t.timestamps
    end
  end
end
