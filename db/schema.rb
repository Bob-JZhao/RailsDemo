# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170111095351) do

  create_table "mng_user", primary_key: "ID", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "LOGIN_ID",    limit: 64,                 null: false, comment: "登录ID，可以是邮箱、手机号或通用标识符"
    t.string   "NAME",        limit: 64,                 null: false
    t.string   "EMAIL",       limit: 256,                null: false
    t.string   "MOBILE",      limit: 32
    t.string   "PASSWORD",    limit: 64,                 null: false, comment: "登录密码；MD5加密"
    t.datetime "CREATE_TIME",                            null: false, comment: "用户注册时间"
    t.boolean  "STATUS",                  default: true, null: false, comment: "1-正常；2-禁用；3-已删除"
    t.index ["LOGIN_ID"], name: "LOGIN_ID_UNIQUE", unique: true, using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
