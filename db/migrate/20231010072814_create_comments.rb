class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :confession, null: false, foreign_key: true

      t.timestamps
    end
  end
end