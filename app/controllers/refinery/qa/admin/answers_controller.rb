module Refinery
  module Qa
    module Admin
      class AnswersController < ::Refinery::AdminController

        def create
          @question = Refinery::Qa::Question.find(params[:question_id])
          @answer = @question.build_answer(params[:answer])
          @answer.save
          redirect_to [refinery, :qa, :admin, :questions]
        end

        def update
          @question = Refinery::Qa::Question.find(params[:id])
          @answer = @question.answer
          @answer.update_attributes(params[:answer])
          redirect_to [refinery, :qa, :admin, :questions]
        end

      end
    end
  end
end
