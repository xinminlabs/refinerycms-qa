module Refinery
  module Qa
    module Admin
      class QuestionsController < ::Refinery::AdminController

        crudify :'refinery/qa/question',
                :title_attribute => "title",
                :order => "created_at DESC"

        helper_method :group_by_date

        def index
          @questions = Refinery::Qa::Question.page(params[:page])
        end

        def show
          @question = Refinery::Qa::Question.find(params[:id])
          @answer = @question.answer || @question.build_answer
        end

      end
    end
  end
end
