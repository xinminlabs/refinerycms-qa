module Refinery
  module Qa
    class QuestionSweeper < ActionController::Caching::Sweeper
      observe Question

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
        @caching ||= Pages::Caching.new(cache_directory)
      end

      def expire_cache!
        caching.expire!
      end

    end
  end
end
