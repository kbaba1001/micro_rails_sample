class CreatePlayLists < ActiveRecord::Migration[5.0]
  def change
    create_table :play_lists do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
