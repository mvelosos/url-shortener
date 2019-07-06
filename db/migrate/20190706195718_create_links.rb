class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :source_url
      t.string :short
      t.integer :clicks
      t.string :title

      t.timestamps
    end
  end
end
