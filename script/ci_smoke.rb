#!/usr/bin/env ruby
# Minimal CI smoke script used by GitHub Actions to provide a fast, stable check
puts "CI smoke script running on Ruby #{RUBY_VERSION} (#{RUBY_PLATFORM})"
# Add any tiny sanity checks here (optional). Keep it intentionally simple so it passes
exit 0
