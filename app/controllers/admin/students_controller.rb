class Admin::StudentsController < ApplicationController
    layout 'admin'
    def index
      @students = Student.all
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
  
    private
  
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
  end
  