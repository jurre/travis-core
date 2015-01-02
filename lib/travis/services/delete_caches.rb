require 'travis/services/base'

module Travis
  module Services
    class DeleteCaches < Base
      def run
        caches = run_service(:find_caches, params)
        caches.each { |c| c.s3_object.destroy }
        caches
      end
    end
  end
end
