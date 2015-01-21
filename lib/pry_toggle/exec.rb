require 'pry_toggle'

module PryToggle
  class Exec
    def initialize(args, hash)
      if args.first =~ /\A(.+):(\d+?)\z/
        @service = PryToggle::Service.new($1, $2.to_i, '', "binding.pry\n", hash[:on])
      else
        if hash[:on]
          puts <<-DOC
=== Invalid command format. should be like that. ===
$ pry-on exmain.rb:10
          DOC
        else
          puts <<-DOC
=== Invalid command format. should be like that. ===
$ pry-off exmain.rb:10
          DOC
        end


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
