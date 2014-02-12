require 'listen'

module GitOcd
  class Observer
  	def initialize(path, options)
      @listener = Listen.to(path, wait_for_delay: options['delay']) do |modified, added, removed|
        # puts "modified absolute path: #{modified}"
        # puts "added absolute path: #{added}"
        # puts "removed absolute path: #{removed}"
        git_command_result = `cd #{path} && git commit -a -m "updated on save" && git push`
      end
  	end

  	def start
  		@listener.start
  	end

  	def stop
  		@listener.stop
  	end

  end
end
