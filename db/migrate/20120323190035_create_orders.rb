class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :country_code, :limit => 2
      t.string :state_code

      t.timestamps
    end
  end
end
