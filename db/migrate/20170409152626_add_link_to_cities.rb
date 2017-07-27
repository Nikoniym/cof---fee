class AddLinkToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :link_vk, :string
    add_column :cities, :link_fb, :string
    add_column :cities, :link_doc, :string
  end
end
