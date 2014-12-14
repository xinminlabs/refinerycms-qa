module Refinery
  module Qa
    class AnswerSweeper < ActionController::Caching::Sweeper
      observe Answer

      def after_save(question)
        expire_cache!
      end

      def after_destroy(question)
        expire_cache!
      end

      protected
      def cache_directory
        page_cache_directory
      end

      def caching
        @caching ||= Caching.new(cache_directory)
      end

      def expire_cache!
        caching.expire!
      end

    end
  end
end
