class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :host_id
      t.integer :attendee_id
      t.datetime :time
      t.boolean :confirmed

      t.timestamps
    end
  end
end
