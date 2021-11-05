# frozen_string_literal: true

# :nodoc:
class CreateRackCasSessions < ActiveRecord::Migration[6.0]

  def self.up
    return if table_exists?(:sessions)

    create_table :sessions, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.string :session_id, null: false
      t.string :cas_ticket
      t.text :data
      t.timestamps
    end

    add_index :sessions, :session_id, length: 191
    add_index :sessions, :cas_ticket, length: 191
    add_index :sessions, :updated_at
  end

  def self.down
    drop_table :sessions
  end

end
