class Logger
    def initialize
      @log = File.open("log.txt", "a")
    end

    @@instance = Lgger.new

    def self.instance
      return @@instance
    end

    def log(msg)
      @log.puts(msg)
    end

    

end
