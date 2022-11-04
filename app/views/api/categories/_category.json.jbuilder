json.extract! category, :id, :title, :image, :created_at, :updated_at
if category.image.attached?
  json.image Rails.application.routes.url_helpers.rails_blob_url(category.image)
end
