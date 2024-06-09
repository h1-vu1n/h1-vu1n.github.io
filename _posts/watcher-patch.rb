# Frozen string literal: true

require 'jekyll-watch'

module jekyll
  module watcher
    extend self

    alias method :original_listen_ignore_paths, :listen_ignore_paths

    def listen_ignore_paths(options)
      original_listen_ignore_paths(options) + [%r!.*\.TMP!i]
    end
  end
end
