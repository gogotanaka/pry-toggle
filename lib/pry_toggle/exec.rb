require 'pry_toggle'

module PryToggle
  class Exec
    def initialize(args)
      args.first =~ /\A(.+):(\d+?)\z/
      @service = PryToggle::Service.new($1, $2.to_i, '', "binding.pry\n")
    end

    def execute!
      @service.execute
    end
  end
end
