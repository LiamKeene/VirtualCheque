class CreateCheques < ActiveRecord::Migration
  def change
    create_table :cheques do |t|
      t.decimal :value
      t.date :payment_date
      t.string :recipient

      t.timestamps
    end
  end
end
