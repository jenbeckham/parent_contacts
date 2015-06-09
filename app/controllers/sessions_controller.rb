class SessionsController < ApplicationController
  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to parents_path, notice: "Successful login"
      else
        flash.now[:notice] = "User informtion does not match records"
      end
    end

    # @teachers = Teacher.all
    # if @teachers.where(email: params[:email])
    #   @user = User.authenticate(params[:password])
    #   redirect_to parents_path, notice: "Successful login"
    # else
    #   format.html { redirect_to login-path, notice: 'User informtion does not match records' }
    # end
  end

  def logout
  end
end
