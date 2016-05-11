json.array!(@activities) do |activity|
  json.extract! activity, :id, :user_id
end
