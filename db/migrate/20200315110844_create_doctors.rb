class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :designation
      t.integer :mobile_no

      t.timestamps
    end
  end
end
