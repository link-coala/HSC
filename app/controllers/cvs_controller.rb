class CvsController < ApplicationController
def index
@cvs = Cv.all
end
def new
@cv = Cv.new
end
#create method
def create
@cv = Cv.new(cv_params)
if @cv.save
flash[:notice] = "cv has been created."
redirect_to @cv
else
	# nothing, yet
end
end
#show
def show
@cv = Cv.find(params[:id])
end
private
def cv_params
params.require(:cv).permit(:name, :lastname, :picture, :job, :genere)
end
end

