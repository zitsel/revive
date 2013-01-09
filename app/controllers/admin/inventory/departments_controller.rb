class Admin::Inventory::DepartmentsController < ApplicationController
http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"

    def index
	@departments = Department.all
    end
    def show
	@items = Item.where("department_id = ? AND status_id = ?", params[:id], 4)
    end
end
