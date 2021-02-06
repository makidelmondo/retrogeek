class CreateSoftwares < ActiveRecord::Migration[6.0]
  def change
    create_table :softwares do |t|
      t.string  :title,      null: false
      t.text    :explanation,null: false
      t.integer :hardware_id,null: false
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
