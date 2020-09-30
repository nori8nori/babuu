class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      
      t.string     :name,    null: false
      t.string     :history, null: false
      t.string     :purpose, null: false
      t.references :user,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
