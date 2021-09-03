class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.text :dtext
      t.text :motifs
      t.text :dkeys
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :diem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
