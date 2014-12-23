json.array!(@citations) do |citation|
  json.extract! citation, :id, :author, :title, :pub_info, :classification, :line_numbers_quoted
  json.url citation_url(citation, format: :json)
end
