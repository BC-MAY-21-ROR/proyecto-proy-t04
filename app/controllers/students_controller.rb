class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create 
    puts student_params
    Student.create(student_params)
    redirect_to students_path
  end

  def edit
    set_student
  end


  def update
    set_student
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
    set_student
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
