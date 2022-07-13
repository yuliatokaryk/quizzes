class QuestionsController < ApplicationController

  before_action :set_question, only: %i[ show edit update destroy]
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params.merge(quiz_id: params[:quiz_id]))
    answers = params[:question][:answers]
    correct_answer = params[:question][:correct_answers][1..-1]
    answers_hash = []

    answers.each_with_index do |answer, index|
      answers_hash << {answer: answer, correct: correct_answer[index] == 1 ? true : false}
    end
    @question.answers = answers_hash.as_json
    if @question.save
      redirect_to quiz_path(@question.quiz)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    @question.destroy
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:content)
    end
end
