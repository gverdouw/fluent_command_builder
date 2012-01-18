require File.expand_path(File.dirname(__FILE__) + '/../command_builder')

module FluentCommandBuilder
  module InstallUtil
    module V40
      class InstallUtil
        def initialize command=nil
          @builder = CommandBuilder.new command
          @builder.append 'installUtil'
          self
        end
        
        def assembly_file_name assembly_file_name
          @builder.append "#{assembly_file_name}"
          self
        end
        
        def help 
          @builder.append "/help"
          self
        end
        
        def assembly_name assembly_strong_name
          @builder.append "/assemblyName=#{assembly_strong_name}"
          self
        end
        
        def install_state_dir directory_name
          @builder.append "/installStateDir=#{directory_name}"
          self
        end
        
        def log_file file_name
          @builder.append "/logFile=#{file_name}"
          self
        end
        
        def log_to_console bool
          @builder.append "/logToConsole=#{bool}"
          self
        end
        
        def show_call_stack 
          @builder.append "/showCallStack"
          self
        end
        
        def uninstall 
          @builder.append "/uninstall"
          self
        end
        
        def to_s
          @builder.to_s
        end
        
      end
      
      def installutil
        InstallUtil.new
      end
      
    end
    
  end
  
  def installutil40
    InstallUtil::V40::InstallUtil.new
  end
  
end

