class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.string :title
      t.string :title_long
      t.string :description
      t.integer :pdp_id,          limit: 20,  default: 0
      t.integer :duration                   , default: 0
      t.string :content_rating,    limit: 20
      t.integer :community_rating, limit: 3, default: 4
      t.string :thumbnail_image
      t.integer :content_type,     limit: 3
      t.string :file_name

      t.timestamps
    end
  end
end
