# midi

The only MIDI library you'll ever need

`midi/sysex`

Easily generate MIDI SysEx Strings.

# Install

    git clone git://github.com/c00lryguy/sysex.git
    cd ohbad
    rake test

# Documentation

[GitHub](http://rubydoc.info/github/c00lryguy/sysex)

# Example

### Byte

    require 'ohbad'

    oh_so_very_bad = Ohbad::Byte.from_ascii("a")
    p oh_so_very_bad.to_hex   # => "61"
    p oh_so_very_bad.to_dec   # => "97"
    p oh_so_very_bad.to_oct   # => "141"
    p oh_so_very_bad.to_bin   # => "01100001"
    p oh_so_very_bad.to_ascii # => "a"

## Contributing to ohbad

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Ryan Scott Lewis. See LICENSE.txt for
further details.