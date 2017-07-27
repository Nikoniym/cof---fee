class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :facebook
      t.string :vkontakte
      t.string :instagram
      t.string :email
      t.string :bay_ticket

      t.timestamps
    end
  end
end
