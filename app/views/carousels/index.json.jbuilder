json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :title, :caption, :image, :visible, :promotion
  json.url carousel_url(carousel, format: :json)
end
