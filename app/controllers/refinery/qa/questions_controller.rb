module Refinery
  module Qa
    class QuestionsController < ::ApplicationController
      cache_sweeper QuestionSweeper

      def thank_you
      end

      def new
        @question = Question.new
      end

      def create
        @question = Question.new(params[:question])

        if @question.save
          redirect_to refinery.thank_you_qa_questions_path
        else
          render :action => 'new'
        end
      end

      def index
        @questions = Question.all
      end

      def show
        @question = Question.find(params[:id])
        @answer = @question.answer
      end

    end
  end
end
