class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.string :host
      t.string :name
      t.string :username
      t.string :password
      t.integer :port
      t.timestamps
    end
  end
end
