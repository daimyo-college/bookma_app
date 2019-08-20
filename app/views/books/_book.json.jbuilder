json.extract! book, :id, :isbn, :title, :comment, :created_at, :updated_at
json.url book_url(book, format: :json)
