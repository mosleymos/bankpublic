json.array!(@banc_wheres) do |banc_where|
  json.extract! banc_where, :id, :n_rue, :adress, :code_postal, :ville
  json.url banc_where_url(banc_where, format: :json)
end
