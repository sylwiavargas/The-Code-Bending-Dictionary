# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_004_134_236) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'definitions', force: :cascade do |t|
    t.string 'content'
    t.bigint 'word_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id', null: false
    t.string 'read_more_url'
    t.string 'read_more_at'
    t.string 'meme_url'
    t.string 'meme_alt_text'
    t.boolean 'approved'
    t.bigint 'technology_id', null: false
    t.index ['technology_id'], name: 'index_definitions_on_technology_id'
    t.index ['user_id'], name: 'index_definitions_on_user_id'
    t.index ['word_id'], name: 'index_definitions_on_word_id'
  end

  create_table 'favorites', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'word_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_favorites_on_user_id'
    t.index ['word_id'], name: 'index_favorites_on_word_id'
  end

  create_table 'related_words', force: :cascade do |t|
    t.integer 'word_one_id'
    t.integer 'word_two_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'technologies', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.string 'password_digest'
    t.boolean 'admin'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'votes', force: :cascade do |t|
    t.integer 'value', default: 1
    t.bigint 'user_id', null: false
    t.bigint 'definition_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['definition_id'], name: 'index_votes_on_definition_id'
    t.index ['user_id'], name: 'index_votes_on_user_id'
  end

  create_table 'words', force: :cascade do |t|
    t.string 'content'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.boolean 'approved'
  end

  add_foreign_key 'definitions', 'technologies'
  add_foreign_key 'definitions', 'users'
  add_foreign_key 'definitions', 'words'
  add_foreign_key 'favorites', 'users'
  add_foreign_key 'favorites', 'words'
  add_foreign_key 'votes', 'definitions'
  add_foreign_key 'votes', 'users'
end
