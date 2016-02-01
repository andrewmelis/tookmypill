class CreatePillTakenEvents < ActiveRecord::Migration
  def change
    create_table :pill_taken_events do |t|

      t.timestamps null: false
    end
  end
end
