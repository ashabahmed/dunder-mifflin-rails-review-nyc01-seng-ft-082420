class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new(employ_params)
  end

  def create
    employee = Employee.create(employ_params)
    
  
    redirect_to employee_path(employee)
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employ_params)

    redirect_to employee_path(@employee)
  end

  private

  def employ_params
    params.require(:employee).permit(:first_name, :last_name, :office, :dog_id, :img_url)
  end
end
