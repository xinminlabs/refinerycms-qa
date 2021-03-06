require 'refinery/core/base_model'

module Refinery
  module Qa
    class Question < Refinery::Core::BaseModel
      include Humanizer
      require_human_on :create

      has_one :answer

      attr_accessible :name, :gender, :phone, :job, :email, :address, :title, :body, :public_show, :humanizer_answer, :humanizer_question_id

      validates :name, presence: true, length: { maximum: 255 }
      validates :title, presence: true, length: { maximum: 255 }
      validates :body, presence: true

      scope :active, -> {
        joins('JOIN refinery_qa_answers ON refinery_qa_answers.question_id = refinery_qa_questions.id').
        where('refinery_qa_answers.active = ?', true).
        where('refinery_qa_questions.public_show = ?', true)
      }
      default_scope { order('created_at DESC') }
    end

    Gender = Struct.new(:value, :label)
  end
end
