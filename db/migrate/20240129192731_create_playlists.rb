class CreatePlaylists < ActiveRecord::Migration[7.1]
  def change
    create_table :playlists do |t|
      t.string :title, default: "default playlist", null: false
      t.string :slug, default: "default_playlist", null: false

      t.timestamps
    end
  end
end
