# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "pliki_nodes", :force => true do |t|
    t.string  "name"
    t.string  "permalink"
    t.integer "plugin_instance_id"
  end

  add_index "pliki_nodes", ["permalink"], :name => "index_pliki_nodes_on_permalink"

  create_table "plugin_instances", :force => true do |t|
    t.string "plugin_name"
  end

  create_table "simple_page_versions", :force => true do |t|
    t.integer "simple_page_id"
    t.integer "version"
    t.text    "body"
    t.integer "plugin_instance_id"
  end

  add_index "simple_page_versions", ["simple_page_id"], :name => "index_simple_page_versions_on_simple_page_id"

  create_table "simple_pages", :force => true do |t|
    t.text    "body"
    t.integer "plugin_instance_id"
    t.integer "version"
  end

end
