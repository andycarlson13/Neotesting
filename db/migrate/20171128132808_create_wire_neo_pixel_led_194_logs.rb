class CreateWireNeoPixelLed194Logs < ActiveRecord::Migration[5.1]
  def change
    create_table :wire_neo_pixel_led_194_logs do |t|
      t.integer :led_194
      t.boolean :led_194_ack
      t.boolean :led_194_complete
      t.string :led_194_timestamp
      t.string :led_194_status
      t.string :led_194_action
      t.integer :neo_pixel_id
      t.timestamps
    end
  end
end