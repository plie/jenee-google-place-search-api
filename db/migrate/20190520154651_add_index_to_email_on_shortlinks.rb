class AddIndexToEmailOnShortlinks < ActiveRecord::Migration[5.2]
  def change
  	add_index :shortlinks, :email
  end
end
