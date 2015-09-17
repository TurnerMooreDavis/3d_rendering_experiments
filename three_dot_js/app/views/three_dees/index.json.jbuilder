json.array!(@three_dees) do |three_dee|
  json.extract! three_dee, :id, :name, :description
  json.url three_dee_url(three_dee, format: :json)
end
