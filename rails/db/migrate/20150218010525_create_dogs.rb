class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed
      t.integer :owner_id, null: false
      t.boolean :bording, null: false, default: "false"
    end
  end
end
