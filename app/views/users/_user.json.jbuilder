json.extract! user, :id, :name, :email, :stripe_id, :card_type, :card_last4, :card_exp_month, :card_exp_year, :expires_at, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
