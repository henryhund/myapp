class AddIdToCalendars < ActiveRecord::Migration
  def change
    add_column :calendars, :id, :primary_key
  end
end
