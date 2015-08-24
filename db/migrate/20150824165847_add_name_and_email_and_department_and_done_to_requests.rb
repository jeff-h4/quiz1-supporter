class AddNameAndEmailAndDepartmentAndDoneToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :name, :string
    add_column :requests, :email, :string
    add_column :requests, :department, :string
    add_column :requests, :done, :boolean
  end
end
