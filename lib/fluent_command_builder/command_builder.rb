module FluentCommandBuilder
  class CommandBuilder

    def initialize command=nil
      @command = command.to_s
      @buffer = ''
    end

    def format value, delimiter=nil, key_value_separator=nil
      value_as_array = case
                         when value.kind_of?(Hash)
                           hash_to_array value, key_value_separator
                         when value.kind_of?(Array)
                           value
                         else
                           [value.to_s]
                       end
      value_as_string = array_to_s value_as_array, delimiter
      quote_if_includes_space value_as_string
    end

    def append value
      @command << ' ' + value
    end

    def buffer value
      @buffer << value
    end

    def append_buffer
      append @buffer
      @buffer = ''
    end

    def to_s
      @command.strip
    end

    private

    def hash_to_array hash, key_value_separator
      hash.map { |k, v| k.to_s + key_value_separator + v.to_s }
    end

    def array_to_s array, delimiter
      array.join delimiter
    end

    def quote_if_includes_space value
      value.to_s.include?(' ') ? %Q["#{value}"] : value
    end

  end
end