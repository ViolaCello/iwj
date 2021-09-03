class CreateDiems < ActiveRecord::Migration[6.1]
  def change
    create_table :diems do |t|
      t.date :custdate
      t.string :moonsign
      t.string :moonstat
      t.integer :house
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
