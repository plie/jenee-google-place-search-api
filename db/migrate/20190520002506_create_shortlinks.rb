class CreateShortlinks < ActiveRecord::Migration[5.2]
  def change
    create_table :shortlinks do |t|
      t.string :original, null: false, index: true
      t.string :shortened, null: false, index: true
      t.string :email, null: false

      t.timestamps

    end
  end
end
