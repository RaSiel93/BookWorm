json.array!(@books) do |book|
  json.extract! book, 
  json.url book_url(book, format: :json)
end
