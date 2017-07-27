class CreateCityFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :city_faqs do |t|
      t.string :question
      t.string :answer
      t.references :city

      t.timestamps
    end
  end
end
