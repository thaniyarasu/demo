json.data(@posts) do |post|
  json.extract! post, :name, :title
  json.url "http://localhost:3000/assets/rails.png"
  #json.url post_url(post, format: :json)
end
json.meta do
  json.total 200
end



