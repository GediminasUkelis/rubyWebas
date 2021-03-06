# frozen_string_literal: true

class CreateHellos < ActiveRecord::Migration[6.0]
  def change
    create_table :hellos do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
