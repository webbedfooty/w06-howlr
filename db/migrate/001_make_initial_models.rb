class MakeInitialModels < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.string :bio, null: false
    end

    create_table :howls do |t|
      t.string :text, null: false
      t.string :image
      t.integer :wolf_id, null: false
      t.integer :likes
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
