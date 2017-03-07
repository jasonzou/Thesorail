class CreateCountryCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :country_codes do |t|
      t.integer :country_id
      t.string :country_code
      t.string :country_name

      t.timestamps
    end
  end
end
