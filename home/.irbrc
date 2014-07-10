require 'irb/completion'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

histfile = "~/.irb.hist"
maxhistsize = 100

  begin
    if defined? Readline::HISTORY
      histfile = File::expand_path( histfile )
      if File::exists?( histfile )
        lines = IO::readlines( histfile ).collect {|line| line.chomp}
        puts "Read %d saved history commands from %s." %
          [ lines.nitems, histfile ] if $DEBUG || $VERBOSE
        Readline::HISTORY.push( *lines )
      else
        puts "History file '%s' was empty or non-existant." %
          histfile if $DEBUG || $VERBOSE
      end

      Kernel::at_exit {
        lines = Readline::HISTORY.to_a.reverse.uniq.reverse
        lines = lines[ -maxhistsize, maxhistsize ] if lines.nitems > maxhistsize
        $stderr.puts "Saving %d history lines to %s." %

          [ lines.length, histfile ] if $VERBOSE || $DEBUG
        File::open( histfile, File::WRONLY|File::CREAT|File::TRUNC ) {|ofh|
          lines.each {|line| ofh.puts line }
        }
      }
    end
  end

def log_to(stream = STDOUT)
  ActiveRecord::Base.logger = Logger.new(stream)
  ActiveRecord::Base.clear_active_connections!
end
