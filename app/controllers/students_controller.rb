class StudentsController < ApplicationController

  def index
    @students = Student.all.page(params[:page])#for pagination
    # redirect_to students_path
    # render json: params
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'student has been created sucessfully'
    else
      render :new, status: 422

    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'student has been updated sucessfully'
    else
      render :edit, status: 422
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path, notice: 'student has been deleted sucessfully'
  end

  def current_user
    Student.first
  end

  private

  def student_params

    params.require(:student).permit(:first_name, :last_name, :email,:profile_image)
  end
end
