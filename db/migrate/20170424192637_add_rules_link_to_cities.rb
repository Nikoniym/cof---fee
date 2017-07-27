class AddRulesLinkToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :rules_link, :string
  end
end
