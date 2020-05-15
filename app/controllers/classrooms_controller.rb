class ClassroomsController < ApplicationController

  def show
    @classroom = Classroom.find_by(params[:id])
    @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
  end
  
end
