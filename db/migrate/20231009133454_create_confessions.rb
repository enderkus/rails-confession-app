class CreateConfessions < ActiveRecord::Migration[7.1]
  def change
    create_table :confessions do |t|
      t.string :title
      t.text :confession
      t.integer :gender

      t.timestamps
    end
  end
end
