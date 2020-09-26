class StudentsController < ApplicationController
  before_action :get_student, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]

  
  
  
  def profile
    render :profile
  end

  def increase_age
    new_age_var = @current_student.age + params[:age_to_increase].to_i
    @current_student.update(age: new_age_var, last_name: @current_student.last_name + "!")
    redirect_to profile_path
  end

  
  
  
  
  
  def login
    @error = flash[:error]
  end

  def handle_login
    @student = Student.find_by(first_name: params[:first_name])
    if @student && @student.authenticate(params[:password])
      # If the student is found AND their password matches
      session[:student_id] = @student.id
      redirect_to profile_path
    else
      flash[:error] = "Incorrect username or password"
      redirect_to login_path
    end
  end

  def logout
    session[:student_id] = nil
    redirect_to login_path
  end




  










  def index
    @students = Student.all
  end

  def new
    if check_and_see_if_someone_is_logged_in?
      redirect_to profile_path
    else
      @errors = flash[:errors]
      @student = Student.new
      render :new
    end
  end

  
  def create
  @student = Student.create(student_params)
    if @student.valid?
      session[:student_id] = @student.id
      redirect_to students_path
    else 
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    @student = @current_student
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :password)
  end

end