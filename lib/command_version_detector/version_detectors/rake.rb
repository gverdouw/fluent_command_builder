require File.expand_path(File.dirname(__FILE__) + '/../standard_version_detector')

module CommandVersionDetector
  class Rake < StandardVersionDetector

    def executable_name
      'rake'
    end

    def executable_args
      '--version'
    end

    def self.version(path=nil)
      Rake.new.version path
    end

  end
end
