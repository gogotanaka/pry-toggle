require 'fileutils'

module PryToggle
  class Service < ::Struct.new(:origin_path, :line_num, :mth_name, :str)

    def execute
      fail '' unless origin_path
      tempfile = File.open(tmp_file_path, 'w')
      f = File.open(abs_file_path, 'r')
      f.each.with_index(1) do |line, i|
        tempfile << line
        if i == line_num
          tempfile << str
        end
      end
      f.close
      tempfile.close

      FileUtils.mv(tmp_file_path, abs_file_path)
    end

    private
      def tmp_file_path
        @tmp_file_path ||= "#{File.expand_path File.dirname(origin_path) }/pry_toggle.tmp"
      end

      def abs_file_path
        @abs_file_path ||= File.expand_path origin_path
      end
  end
end
