class UsersController < ApplicationController


  


  def new
    if logged_in
      redirect_to projects_path
      flash[:notice] = "You are already logged in."
    else
      @user = User.new
      render layout: 'sessions'
    end
  end


  def most_projects
    @user = User.most_projects
  end

end


