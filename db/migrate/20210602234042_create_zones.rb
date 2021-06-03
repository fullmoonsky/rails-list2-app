class CreateZones < ActiveRecord::Migration[6.1]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :description
      t.string :content_rating
      t.references :content_provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
