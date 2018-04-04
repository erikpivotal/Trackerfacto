class CreateRetros < ActiveRecord::Migration[5.1]
  def change
    create_table :retros do |t|
      t.date :date, null: false

      t.timestamps
    end
  end
end
