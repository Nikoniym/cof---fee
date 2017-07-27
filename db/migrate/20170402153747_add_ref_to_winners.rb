class AddRefToWinners < ActiveRecord::Migration[5.0]
  def change
    add_reference :winners, :award, foreign_key: true
  end
end
