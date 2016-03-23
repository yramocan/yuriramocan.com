class AddCompletionStatusToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :completion_status, :boolean
  end
end
