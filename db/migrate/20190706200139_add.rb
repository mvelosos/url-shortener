class Add < ActiveRecord::Migration[5.2]
  def change
    change_column :links, :clicks, :integer, default: 0
  end
end
