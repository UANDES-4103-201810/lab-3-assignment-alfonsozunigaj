class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.datetime :time_of_trans

      t.timestamps
    end
  end
end
