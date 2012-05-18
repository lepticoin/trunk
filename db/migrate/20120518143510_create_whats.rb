class CreateWhats < ActiveRecord::Migration
  def change
    create_table :whats do |t|
      t.string :name

      t.timestamps
    end
  end
end
