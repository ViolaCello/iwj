class CreatePractices < ActiveRecord::Migration[6.1]
  def change
    create_table :practices do |t|
      t.string :name
      t.time :tempus
      t.text :note
      t.string :category
      t.string :keyword
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :diem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
