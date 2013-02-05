class CreateEvents2s < ActiveRecord::Migration
  def change
    create_table :events2s do |t|
      t.string :Event
      t.string :Message

      t.timestamps
    end
  end
end
