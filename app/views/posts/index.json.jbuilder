json.array!(@posts) do |post|
  json.extract! post, :title, :name, :desc
  json.url post_url(post, format: :json)
end