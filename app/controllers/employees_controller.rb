class EmployeesController < UsersController
	def index
		@employees = Employee.all
	end
	def list
	  @employees = Emploee.find(:all)
	end
	def show
	  @employees = Emploee.find(params[:id])
	end
	def new
    @employees = Employee.new
  end
  def create
  	@employees = Employee.new(params[:emloyee])
  	if @employees.save
  		redirect_to :action => "list"
  	else
  		render :action => "new"
  	end
  end
  def edit
    @employees = Employee.find(params[:id])
  end
end