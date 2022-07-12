class QuizzesController < ApplicationController
  
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]
  
  def index
    @quizzes = Quiz.all
  end
  
  def show
    @questions = Question.where(:quiz_id => @quiz[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def edit
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      flash[:notice] = t('.success')
      redirect_to new_quiz_question_path(@quiz)
    else
      render 'new'
    end
  end

  def update
    if @quiz.update(quiz_params)
      flash[:notice] = t('.success')
      redirect_to @quiz
    else
      render 'edit'
    end
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_path
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :description)
  end
end
