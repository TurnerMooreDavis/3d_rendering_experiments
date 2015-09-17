class CreateThreeDees < ActiveRecord::Migration
  def change
    create_table :three_dees do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
