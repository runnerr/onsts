json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :category_id, :question, :name, :email
  json.url ticket_url(ticket, format: :json)
end
