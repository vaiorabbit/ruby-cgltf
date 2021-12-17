# Yet another cgltf wrapper for Ruby
#
# * https://github.com/vaiorabbit/cgltf-bindings
#
# [NOTICE] This is an automatically generated file.

require 'ffi'
require_relative 'cgltf_main.rb'

module Cgltf
  extend FFI::Library

  @@cgltf_import_done = false
  def self.load_lib(libpath)

    unless @@cgltf_import_done
      # Ref.: Using Multiple and Alternate Libraries
      # https://github.com/ffi/ffi/wiki/Using-Multiple-and-Alternate-Libraries
      begin
        lib_paths = [libpath].compact
        ffi_lib_flags :now, :global
        ffi_lib *lib_paths
        setup_symbols()
      rescue => error
        puts error
      end
    end

  end

  def self.setup_symbols()
    setup_cgltf_symbols()
  end

end
