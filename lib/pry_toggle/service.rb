require 'fileutils'

module PryToggle
  class Service < ::Struct.new(:origin_path, :line_num, :mth_name, :str, :on)

    def execute
      File.open(tmp_file_path, 'w') do |d|
        File.open(abs_file_path, 'r') do |o|
          if on
            o.each.with_index(1) do |line, i|
              d << str if i == line_num
              d << line
              # d << str if line =~ %r|def( +)#{mth_name}|
            end
          else
            o.each.with_index(1) do |line, i|
              d << line unless (i == line_num || line_num.nil?) && line == str
            end
          end
        end
      end

      FileUtils.mv(tmp_file_path, abs_file_path)
    rescue Errno::ENOENT
      puts "No such file - #{origin_path}"
    ensure
      FileUtils.rm_f(tmp_file_path)
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
