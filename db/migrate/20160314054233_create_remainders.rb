class CreateRemainders < ActiveRecord::Migration
  def change
    create_table :remainders do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.datetime :remainder_time
      t.string :schedule_interval
      t.text :message
      t.boolean :status
       t.references :group, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
