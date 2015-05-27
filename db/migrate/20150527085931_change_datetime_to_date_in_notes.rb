class ChangeDatetimeToDateInNotes < ActiveRecord::Migration
  def change
    change_column :notes, :created_at, :date
  end
end
