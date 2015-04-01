class AddIpAndBrowserToVictim < ActiveRecord::Migration
  def change
    add_column :victims, :ip, :string
    add_column :victims, :browser, :string
  end
end
