require 'refinerycms-core'

module Refinery
  autoload :QaGenerator, 'generators/refinery/qa/qa_generator'

  module Qa
    require 'refinery/qa/engine'
    require 'refinery/qa/configuration'

    autoload :Version, 'refinery/qa/version'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end
  end
end
