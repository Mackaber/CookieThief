class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :session

      t.timestamps
    end
  end
end
