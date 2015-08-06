json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :status, :title, :description, :category
  json.url ticket_url(ticket, format: :json)
end
