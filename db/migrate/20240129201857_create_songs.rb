class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :filename
      t.string :blob_key
      t.string :content_type
      t.timestamps
    end
  end
end
