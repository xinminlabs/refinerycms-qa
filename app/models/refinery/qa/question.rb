require 'refinery/core/base_model'

module Refinery
  module Qa
    class Question < Refinery::Core::BaseModel

      has_one :answer

      attr_accessible :name, :title, :body

      validates :name, presence: true, length: { maximum: 255 }
      validates :title, presence: true, length: { maximum: 255 }
      validates :body, presence: true

      default_scope { order('created_at DESC') }

    end
  end
end
