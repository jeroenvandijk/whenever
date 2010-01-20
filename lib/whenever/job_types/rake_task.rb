module Whenever
  module Job
    class RakeTask < Whenever::Job::Default
      
      def initialize(options = {})
        @rake = options[:rake_path] || 'rake'
        super
      end
      
      def output
        path_required
        "cd #{@path} && RAILS_ENV=#{@environment} /usr/bin/env #{@rake} #{task}"
      end
      
    end
  end
end
