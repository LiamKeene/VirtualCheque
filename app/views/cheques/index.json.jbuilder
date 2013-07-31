json.array!(@cheques) do |cheque|
  json.extract! cheque, :value, :payment_date, :recipient
  json.url cheque_url(cheque, format: :json)
end
