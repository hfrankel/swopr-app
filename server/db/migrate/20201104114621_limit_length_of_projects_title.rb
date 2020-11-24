class LimitLengthOfProjectsTitle < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :title, :string, :limit => 150
  end
end
