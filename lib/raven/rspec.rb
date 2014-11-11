# Stub out methods so that raven is faster to load in test and doesn't blow
# up. Usage:
#  # spec/spec_helper.rb
#  require 'raven/rspec'
module Raven
  class << self
    attr_writer :client

    attr_writer :configuration

    def context; end

    def logger; end

    def configuration; end

    def client; end

    def report_ready; end

    def configure(silent = false); end

    def send(evt); end

    def capture(options = {}, &block); end

    def capture_exception(exception, options = {}); end

    def capture_message(message, options = {}); end

    def send_or_skip(exc); end

    def annotate_exception(exc, options = {}); end

    def user_context(options = {}); end

    def tags_context(options = {}); end

    def extra_context(options = {}); end

    def rack_context(env); end

    def inject; end

    # For cross-language compat
    alias :captureException :capture_exception
    alias :captureMessage :capture_message
    alias :annotateException :annotate_exception
    alias :annotate :annotate_exception
  end
end