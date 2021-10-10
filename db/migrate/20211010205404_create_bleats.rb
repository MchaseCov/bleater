class CreateBleats < ActiveRecord::Migration[6.1]
  def change
    create_table :bleats do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end