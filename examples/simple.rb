$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require 'midi/sysex'

module WrapperForMyMidiDevice
  class SysEx < Midi::SysEx
    # All options optional
    manufacturer "Behringer" # If not set, we won't include it 
    sysex_start "F0" # Will use the given value instead of SYSEX_BEGIN
    # Same as: 
    # sysex_start "F0" => :hex
    # sysex_start 0xF0
    # sysex_start "240" => dec
    # sysex_start 240
    # sysex_start "360" => :oct
    # sysex_start 0o360
    # sysex_start "11110000" => :bin
    # sysex_start 0b11110000

    sysex_stop "F7" # Will use the given value instead of SYSEX_END
  end
end

# All examples below output "F00020325A5A5AF7".
# F0 | 00 20 32 | 5A 5A 5A | F7
WrapperForMyMidiDevice::SysEx::generate_hex(90, 90, 90) # ASSUME INTEGERS ARE DEC. ALWAYS.
WrapperForMyMidiDevice::SysEx::generate_hex("5A", "5A", "5A") # ASSUME STRINGS ARE HEX
WrapperForMyMidiDevice::SysEx::generate_hex("5A5A5A") # SPLITTING HEX STRING
WrapperForMyMidiDevice::SysEx::generate_hex("ZZ" => :ascii, "5A")
WrapperForMyMidiDevice::SysEx::generate_hex("Z" => :ascii, 90, 132 => :oct)
WrapperForMyMidiDevice::SysEx::generate_hex("1011010" => :bin, 0b1011010, 0x5A)
WrapperForMyMidiDevice::SysEx::generate_hex(0o132, "5A5A") # OCTAL LITERAL & SPLITTING HEX STRING
WrapperForMyMidiDevice::SysEx::generate_hex(["5A", "5A", "5A"] => :hex) # SET ALL VALUES IN AN ARRAY TO HEX
# Override default options:
WrapperForMyMidiDevice::SysEx::generate_hex("5A5A5A" => :hex, :manufacturer => nil, [:sysex_start, :sysex_stop] => "11")
# This wll output "115A5A5A11"