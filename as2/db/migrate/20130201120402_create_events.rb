class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :osc

      t.timestamps
    end
  end
end
