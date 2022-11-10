class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.by_name(params[:name]) 
    else 
      Student.all 
    end
      render json: students
    #byebug
  end

  def show
    student = Student.find(params[:id])
    render json: student
    #byebug
  end

end
