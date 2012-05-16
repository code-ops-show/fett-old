class EmployeesController < ApplicationController
	def edit
		@employee = Employee.find(params[:id])
	end

	  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to edit_employee_path(@employee)
    else
      render action: 'edit'
    end
  end
end
