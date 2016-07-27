class CreatePlayListsSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :play_lists_songs do |t|
      t.references :play_list, foreign_key: true
      t.references :song, foreign_key: true
    end
  end
end
