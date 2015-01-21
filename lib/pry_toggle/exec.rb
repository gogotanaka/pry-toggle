require 'pry_toggle'

module PryToggle
  class Exec
    def initialize(args)
      if args.first =~ /\A(.+):(\d+?)\z/
        @service = PryToggle::Service.new($1, $2.to_i, '', "binding.pry\n")
      else
        puts <<-DOC
=== Format should be ===
$ pry-tgl exmain.rb:10

         OR

$ pry-tgl exmain.rb#method_name
        DOC
      end
    end

    def execute!
      @service.execute
    end

    def executable?
      !!@service
    end
  end
end
