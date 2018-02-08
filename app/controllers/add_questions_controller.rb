class AddQuestionsController < ApplicationController
  before_action :logged_in_user

  def index
    @add_questions = AddQuestion.paginate(page: params[:page])
  end

  def show
    @addquestion = AddQuestion.find(params[:id])
  end

  def new
    @addquestion = AddQuestion.new
  end

  def create
    @addquestion = AddQuestion.new(add_question_params)
    if @addquestion.save
      flash[:success] = "Question successfully inserted!"
      redirect_to @addquestion
    else
      render 'new'
    end
  end

  def edit
    @addquestion = AddQuestion.find(params[:id])
  end

  def update
    @addquestion = AddQuestion.find(params[:id])
    if @addquestion.update_attributes(add_question_params)
      flash[:success] = "Question updated"
      redirect_to @addquestion
    else
      render 'edit'
    end
  end

  def destroy
    AddQuestion.find(params[:id]).destroy
    flash[:success] = "Question deleted"
    redirect_to add_questions_url
  end

  private

  def add_question_params
    params.require(:add_question).permit(:question, :difficulty, :mark, :course)
  end

  # Before filters

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
