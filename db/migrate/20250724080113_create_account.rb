class CreateAccount < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :account_type, null: false
      t.decimal :balance, precision: 15, scale: 2, default: 0.0
      t.string :currency, null: false, default: 'USD'
      t.string :number, null: true
      t.string :bank_name, null: true
      t.timestamps
    end
  end
end
