class CreateStuffs < ActiveRecord::Migration
  def self.up
    enable_extension 'hstore' unless extension_enabled?('hstore')
    
    create_table :stuffs do |t|
      t.integer    :location_id,  null: true
      t.integer    :category_jd,  null: true
      t.text       :name,         null: false
      t.decimal    :price,        null: false
      t.integer    :quantity,     null: false
      t.json       :categories,   null: true
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :stuffs
  end
end
