require 'ffi'
require_relative '../lib/cgltf'

include Cgltf

if __FILE__ == $PROGRAM_NAME
  Cgltf.load_lib('../lib/cgltf.dylib')
  options = Cgltf_options.new
  data = FFI::MemoryPointer.new :pointer

  model_path = ARGV[0]

  result = cgltf_parse_file(options, model_path, data)
  if result != Cgltf_result_success
    puts "[ERROR] Could not load: #{model_path}"
    return
  end

  result = cgltf_load_buffers(options, data.read_pointer, model_path)
  if result != Cgltf_result_success
    puts "[ERROR] Could not load: #{model_path}"
    cgltf_free(data)
    return
  end

  result = cgltf_validate(data.read_pointer)
  if result != Cgltf_result_success
    puts "[ERROR] Invalid model given: #{model_path}"
    cgltf_free(data)
    return
  end

  gltf = Cgltf_data.new(data.read_pointer)
  puts "Type: #{gltf[:file_type]}"
  puts "Meshes: #{gltf[:meshes_count]}"

  cgltf_free(data.read_pointer)
end
