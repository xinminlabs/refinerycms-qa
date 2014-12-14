require 'refinery/core/base_model'

module Refinery
  module Qa
    class Answer < ::Refinery::Core::BaseModel

      belongs_to :question

      attr_accessible :body

      validates :body, presence: true

      default_scope { order('created_at DESC') }

    end
  end
end
