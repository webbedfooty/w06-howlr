#002_add_howl_id_to_wolves_table.rb
class AddHowlIdToWolvesTable < ActiveRecord::Migration
  def change
    add_column :wolves, :howl_id, :integer
  end
end
