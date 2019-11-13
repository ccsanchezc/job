class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :stripe_id
      t.string :card_type
      t.string :card_last4
      t.string :card_exp_month
      t.string :card_exp_year
      t.datetime :expires_at
      t.boolean :admin

      t.timestamps
    end
  end
end
