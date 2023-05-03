require 'ffi'
# frozen_string_literal: true

require_relative "faster_sum/version"

module FasterSum
  class Error < StandardError; end
  extend FFI::Library
  ffi_lib File.expand_path('../../libtest_lib.so', __FILE__)

  attach_function :sum_integers, [:uint32], :uint64
end
