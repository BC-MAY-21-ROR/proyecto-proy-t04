class StudentsController < ApplicationController
  before_action :set_student, only: %i[edit update destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create 
    Student.create(student_params)
    redirect_to students_path
  end

  def edit
  end


  def update
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    data = params.require(:student).permit(:name, :lastname, :email, :password)
  end
end
