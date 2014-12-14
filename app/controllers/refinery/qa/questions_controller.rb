module Refinery
  module Qa
    class QuestionsController < ::ApplicationController
      cache_sweeper QuestionSweeper

      before_filter :find_page, only: [:create, :new]
      before_filter :find_thank_you_page, only: :thank_you

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

      protected

      def find_page
        @page = Page.where(link_url: Refinery::Qa.page_path_new).first
      end

      def find_thank_you_page
        @page = Page.where(link_url: Refinery::Qa.page_path_thank_you).first
      end

    end
  end
end
