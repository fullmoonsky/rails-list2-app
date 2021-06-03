json.extract! asset, :id, :title, :title_long, :description, :pdp_id, :duration, :content_rating, :community_rating, :thumbnail_image, :content_type, :file_name, :created_at, :updated_at
json.url asset_url(asset, format: :json)
