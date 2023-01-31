class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|

      t.string "name" #make a column type string called name
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end
