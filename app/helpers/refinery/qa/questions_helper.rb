module Refinery
  module Qa
    module QuestionsHelper
      def active_questions
        Refinery::Qa::Question.active.limit(25)
      end
    end
  end
end
