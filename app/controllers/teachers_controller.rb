class TeachersController < ApplicationController
  before_action :logged_in?

  def edit
    @teacher = Teacher.where(id: session[:teacher_id]).all
  end

  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to parents_path, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @parents }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  def logged_in?
    if Teacher.find_by_id(session[:teacher_id])
    else
      redirect_to sessions_login_path, notice: "Please login"
    end
  end
end
