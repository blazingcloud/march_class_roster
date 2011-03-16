class AddPresentToPeople < ActiveRecord::Migration
  def self.up
    add_column(:people, :present, :boolean)
  end

  def self.down
    remove_column(:people, :present)
  end
end
