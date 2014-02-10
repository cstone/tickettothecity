class AddEventStartToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_start, :datetime
    add_column :events, :event_end, :datetime
  end
end
