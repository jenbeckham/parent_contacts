class SessionsController < ApplicationController
  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to parents_path, notice: "Successful login"
      else
        flash.now[:notice] = "User information does not match records"
      end
    end

    # @teachers = Teacher.all
    # if @teachers.where(email: params[:email])
    #   teacher = Teacher.authenticate(params[:password])
    #   redirect_to parents_path, notice: "Successful login"
    # else
    #   flash.now[:notice] = 'User informtion does not match records' }
    # end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to sessions_login_path, notice: "Successfully logged out."
  end
end
