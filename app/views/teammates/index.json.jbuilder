json.array!(@teammates) do |teammate|
  json.extract! teammate, :first_name, :last_name, :biography
  json.url teammate_url(teammate, format: :json)
end
