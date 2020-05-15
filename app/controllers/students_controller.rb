class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :edit]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end

  def set_student
    @student = Student.find_by(params[:id])
  end
  
end
