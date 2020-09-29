class ApplicationController < ActionController::Base

    # helper_method allows you to call the method on the views
    helper_method :check_and_see_if_someone_is_logged_in?
    before_action :authorized_to_see_page

    def set_current_student
        # INSTANCE VARIABLES IN A BEFORE ACTION IS AVAILABLE
        @current_student = Student.find_by(id: session[:student_id])
    end

    def check_and_see_if_someone_is_logged_in?
        !set_current_student.nil?
    end

    def authorized_to_see_page
        redirect_to login_path unless check_and_see_if_someone_is_logged_in?
    end

end
