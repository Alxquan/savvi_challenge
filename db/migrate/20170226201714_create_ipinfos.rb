class CreateIpinfos < ActiveRecord::Migration[5.0]
  def change
    create_table :ipinfos do |t|
      t.string :other_ip_address
      t.string :personal_ip_address

      t.timestamps
    end
  end
end
