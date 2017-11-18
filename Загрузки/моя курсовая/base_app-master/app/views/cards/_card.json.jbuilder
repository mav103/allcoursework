json.extract! card, :id, :second_name, :first_name, :last_name, :passport, :insurance, :residence, :created, :allergy, :cart_number, :address_id, :created_at, :updated_at
json.url card_url(card, format: :json)
