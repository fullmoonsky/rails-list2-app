class CreateContentRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :content_ratings do |t|
      t.string :rating

      t.timestamps
    end
  end
end
