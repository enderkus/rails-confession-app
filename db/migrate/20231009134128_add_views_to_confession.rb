class AddViewsToConfession < ActiveRecord::Migration[7.1]
  def change
    add_column :confessions, :views, :integer, default: 0
  end
end
