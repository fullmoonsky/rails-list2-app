class CreateContentProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :content_providers do |t|
      t.string :name
      t.string :thumbnail_image

      t.timestamps
    end
  end
end
