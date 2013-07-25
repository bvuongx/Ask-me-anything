class UsersController < ApplicationController

before_filter :find_question
before_filter :find_user, :only => [:show, :edit, :update, :destroy]


  def new
    @user = question.user.build
  end

  def create
    @user = @question.users.build(params[:user])
    if @user.save
      flash[:notice] = "User has been created."
      redirect_to [@question, @user]
    else
      flash[:alert] = "User has not been created."
      render :action => "new"
    end
  end

  def show
  end





private
  def find_question
    @question = Question.find(params[:question_id])
  end

end
