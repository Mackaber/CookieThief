class CreateCookieParts < ActiveRecord::Migration
  def change
    create_table :cookie_parts do |t|
      t.string :part
      t.integer :seq
      t.references :victim, index: true

      t.timestamps
    end
  end
end
