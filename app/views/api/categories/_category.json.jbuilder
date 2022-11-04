json.extract! category, :id, :title, :image, :created_at, :updated_at
if category.image.attached?
  json.image url_for(category.image)
end
