require File.expand_path(File.dirname(__FILE__) + '/msbuild')

module CommandVersionDetector
  class AspNetCompiler

    def version(path=nil)
      msbuild = MSBuild.new
      msbuild.version path
    end

    def self.version(path=nil)
      AspNetCompiler.new.version path
    end

  end
end