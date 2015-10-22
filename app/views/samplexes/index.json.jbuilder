json.array!(@samplexes) do |samplex|
  json.extract! samplex, :id, :fname, :lname, :lname
  json.url samplex_url(samplex, format: :json)
end
