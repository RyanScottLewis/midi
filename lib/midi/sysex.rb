
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "..", "ohbad", "lib"))
require 'ohbad'


module Midi
  class SysEx
    #--
    # System common messages
    #++

    # Start of system exclusive; fabric worn on feet
    SYSEX_BEGIN = 0xF0
    # Beats from top: LSB/MSB 6 ticks = 1 beat
    SONG_POINTER = 0xF2
    # Val = number of song
    SONG_SELECT = 0xF3
    # Tune request
    TUNE_REQUEST = 0xF6
    # End of system exclusive
    SYSEX_END = 0xF7

    def initialize(manufacturer=nil)

      unless manufacturer.nil?
        @manufacturer = Manufacturers.keys.find { |m| m =~ Regexp.new(manufacturer) }
        
      end

    end
  end
end