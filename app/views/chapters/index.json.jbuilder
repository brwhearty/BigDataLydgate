json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :name, :starting_line_number, :ending_line_number
  json.url chapter_url(chapter, format: :json)
end
