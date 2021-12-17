# Yet another cgltf wrapper for Ruby
#
# * https://github.com/vaiorabbit/cgltf-bindings
#
# [NOTICE] This is an automatically generated file.

require 'ffi'

module Cgltf
  extend FFI::Library
  # Define/Macro


  # Enum

  Cgltf_file_type_invalid = 0
  Cgltf_file_type_gltf = 1
  Cgltf_file_type_glb = 2
  Cgltf_result_success = 0
  Cgltf_result_data_too_short = 1
  Cgltf_result_unknown_format = 2
  Cgltf_result_invalid_json = 3
  Cgltf_result_invalid_gltf = 4
  Cgltf_result_invalid_options = 5
  Cgltf_result_file_not_found = 6
  Cgltf_result_io_error = 7
  Cgltf_result_out_of_memory = 8
  Cgltf_result_legacy_gltf = 9
  Cgltf_buffer_view_type_invalid = 0
  Cgltf_buffer_view_type_indices = 1
  Cgltf_buffer_view_type_vertices = 2
  Cgltf_attribute_type_invalid = 0
  Cgltf_attribute_type_position = 1
  Cgltf_attribute_type_normal = 2
  Cgltf_attribute_type_tangent = 3
  Cgltf_attribute_type_texcoord = 4
  Cgltf_attribute_type_color = 5
  Cgltf_attribute_type_joints = 6
  Cgltf_attribute_type_weights = 7
  Cgltf_component_type_invalid = 0
  Cgltf_component_type_r_8 = 1
  Cgltf_component_type_r_8u = 2
  Cgltf_component_type_r_16 = 3
  Cgltf_component_type_r_16u = 4
  Cgltf_component_type_r_32u = 5
  Cgltf_component_type_r_32f = 6
  Cgltf_type_invalid = 0
  Cgltf_type_scalar = 1
  Cgltf_type_vec2 = 2
  Cgltf_type_vec3 = 3
  Cgltf_type_vec4 = 4
  Cgltf_type_mat2 = 5
  Cgltf_type_mat3 = 6
  Cgltf_type_mat4 = 7
  Cgltf_primitive_type_points = 0
  Cgltf_primitive_type_lines = 1
  Cgltf_primitive_type_line_loop = 2
  Cgltf_primitive_type_line_strip = 3
  Cgltf_primitive_type_triangles = 4
  Cgltf_primitive_type_triangle_strip = 5
  Cgltf_primitive_type_triangle_fan = 6
  Cgltf_alpha_mode_opaque = 0
  Cgltf_alpha_mode_mask = 1
  Cgltf_alpha_mode_blend = 2
  Cgltf_animation_path_type_invalid = 0
  Cgltf_animation_path_type_translation = 1
  Cgltf_animation_path_type_rotation = 2
  Cgltf_animation_path_type_scale = 3
  Cgltf_animation_path_type_weights = 4
  Cgltf_interpolation_type_linear = 0
  Cgltf_interpolation_type_step = 1
  Cgltf_interpolation_type_cubic_spline = 2
  Cgltf_camera_type_invalid = 0
  Cgltf_camera_type_perspective = 1
  Cgltf_camera_type_orthographic = 2
  Cgltf_light_type_invalid = 0
  Cgltf_light_type_directional = 1
  Cgltf_light_type_point = 2
  Cgltf_light_type_spot = 3
  Cgltf_data_free_method_none = 0
  Cgltf_data_free_method_file_release = 1
  Cgltf_data_free_method_memory_free = 2
  Cgltf_meshopt_compression_mode_invalid = 0
  Cgltf_meshopt_compression_mode_attributes = 1
  Cgltf_meshopt_compression_mode_triangles = 2
  Cgltf_meshopt_compression_mode_indices = 3
  Cgltf_meshopt_compression_filter_none = 0
  Cgltf_meshopt_compression_filter_octahedral = 1
  Cgltf_meshopt_compression_filter_quaternion = 2
  Cgltf_meshopt_compression_filter_exponential = 3

  # Typedef

  typedef :int, :cgltf_size
  typedef :float, :cgltf_float
  typedef :int, :cgltf_int
  typedef :uint, :cgltf_uint
  typedef :int, :cgltf_bool
  typedef :int, :cgltf_file_type
  typedef :int, :cgltf_result
  typedef :int, :cgltf_buffer_view_type
  typedef :int, :cgltf_attribute_type
  typedef :int, :cgltf_component_type
  typedef :int, :cgltf_type
  typedef :int, :cgltf_primitive_type
  typedef :int, :cgltf_alpha_mode
  typedef :int, :cgltf_animation_path_type
  typedef :int, :cgltf_interpolation_type
  typedef :int, :cgltf_camera_type
  typedef :int, :cgltf_light_type
  typedef :int, :cgltf_data_free_method
  typedef :int, :cgltf_meshopt_compression_mode
  typedef :int, :cgltf_meshopt_compression_filter

  # Struct

  class Cgltf_memory_options < FFI::Struct
    layout(
      :alloc, :pointer,
      :free, :pointer,
      :user_data, :pointer,
    )
  end

  class Cgltf_file_options < FFI::Struct
    layout(
      :read, :pointer,
      :release, :pointer,
      :user_data, :pointer,
    )
  end

  class Cgltf_options < FFI::Struct
    layout(
      :type, :int,
      :json_token_count, :ulong,
      :memory, Cgltf_memory_options.by_value,
      :file, Cgltf_file_options.by_value,
    )
  end

  class Cgltf_extras < FFI::Struct
    layout(
      :start_offset, :ulong,
      :end_offset, :ulong,
    )
  end

  class Cgltf_extension < FFI::Struct
    layout(
      :name, :pointer,
      :data, :pointer,
    )
  end

  class Cgltf_buffer < FFI::Struct
    layout(
      :name, :pointer,
      :size, :ulong,
      :uri, :pointer,
      :data, :pointer,
      :data_free_method, :int,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_meshopt_compression < FFI::Struct
    layout(
      :buffer, :pointer,
      :offset, :ulong,
      :size, :ulong,
      :stride, :ulong,
      :count, :ulong,
      :mode, :int,
      :filter, :int,
    )
  end

  class Cgltf_buffer_view < FFI::Struct
    layout(
      :name, :pointer,
      :buffer, :pointer,
      :offset, :ulong,
      :size, :ulong,
      :stride, :ulong,
      :type, :int,
      :data, :pointer,
      :has_meshopt_compression, :int,
      :meshopt_compression, Cgltf_meshopt_compression.by_value,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_accessor_sparse < FFI::Struct
    layout(
      :count, :ulong,
      :indices_buffer_view, :pointer,
      :indices_byte_offset, :ulong,
      :indices_component_type, :int,
      :values_buffer_view, :pointer,
      :values_byte_offset, :ulong,
      :extras, Cgltf_extras.by_value,
      :indices_extras, Cgltf_extras.by_value,
      :values_extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
      :indices_extensions_count, :ulong,
      :indices_extensions, :pointer,
      :values_extensions_count, :ulong,
      :values_extensions, :pointer,
    )
  end

  class Cgltf_accessor < FFI::Struct
    layout(
      :name, :pointer,
      :component_type, :int,
      :normalized, :int,
      :type, :int,
      :offset, :ulong,
      :count, :ulong,
      :stride, :ulong,
      :buffer_view, :pointer,
      :has_min, :int,
      :min, [:float, 16],
      :has_max, :int,
      :max, [:float, 16],
      :is_sparse, :int,
      :sparse, Cgltf_accessor_sparse.by_value,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_attribute < FFI::Struct
    layout(
      :name, :pointer,
      :type, :int,
      :index, :int,
      :data, :pointer,
    )
  end

  class Cgltf_image < FFI::Struct
    layout(
      :name, :pointer,
      :uri, :pointer,
      :buffer_view, :pointer,
      :mime_type, :pointer,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_sampler < FFI::Struct
    layout(
      :name, :pointer,
      :mag_filter, :int,
      :min_filter, :int,
      :wrap_s, :int,
      :wrap_t, :int,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_texture < FFI::Struct
    layout(
      :name, :pointer,
      :image, :pointer,
      :sampler, :pointer,
      :has_basisu, :int,
      :basisu_image, :pointer,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_texture_transform < FFI::Struct
    layout(
      :offset, [:float, 2],
      :rotation, :float,
      :scale, [:float, 2],
      :has_texcoord, :int,
      :texcoord, :int,
    )
  end

  class Cgltf_texture_view < FFI::Struct
    layout(
      :texture, :pointer,
      :texcoord, :int,
      :scale, :float,
      :has_transform, :int,
      :transform, Cgltf_texture_transform.by_value,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_pbr_metallic_roughness < FFI::Struct
    layout(
      :base_color_texture, Cgltf_texture_view.by_value,
      :metallic_roughness_texture, Cgltf_texture_view.by_value,
      :base_color_factor, [:float, 4],
      :metallic_factor, :float,
      :roughness_factor, :float,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_pbr_specular_glossiness < FFI::Struct
    layout(
      :diffuse_texture, Cgltf_texture_view.by_value,
      :specular_glossiness_texture, Cgltf_texture_view.by_value,
      :diffuse_factor, [:float, 4],
      :specular_factor, [:float, 3],
      :glossiness_factor, :float,
    )
  end

  class Cgltf_clearcoat < FFI::Struct
    layout(
      :clearcoat_texture, Cgltf_texture_view.by_value,
      :clearcoat_roughness_texture, Cgltf_texture_view.by_value,
      :clearcoat_normal_texture, Cgltf_texture_view.by_value,
      :clearcoat_factor, :float,
      :clearcoat_roughness_factor, :float,
    )
  end

  class Cgltf_transmission < FFI::Struct
    layout(
      :transmission_texture, Cgltf_texture_view.by_value,
      :transmission_factor, :float,
    )
  end

  class Cgltf_ior < FFI::Struct
    layout(
      :ior, :float,
    )
  end

  class Cgltf_specular < FFI::Struct
    layout(
      :specular_texture, Cgltf_texture_view.by_value,
      :specular_color_texture, Cgltf_texture_view.by_value,
      :specular_color_factor, [:float, 3],
      :specular_factor, :float,
    )
  end

  class Cgltf_volume < FFI::Struct
    layout(
      :thickness_texture, Cgltf_texture_view.by_value,
      :thickness_factor, :float,
      :attenuation_color, [:float, 3],
      :attenuation_distance, :float,
    )
  end

  class Cgltf_sheen < FFI::Struct
    layout(
      :sheen_color_texture, Cgltf_texture_view.by_value,
      :sheen_color_factor, [:float, 3],
      :sheen_roughness_texture, Cgltf_texture_view.by_value,
      :sheen_roughness_factor, :float,
    )
  end

  class Cgltf_emissive_strength < FFI::Struct
    layout(
      :emissive_strength, :float,
    )
  end

  class Cgltf_material < FFI::Struct
    layout(
      :name, :pointer,
      :has_pbr_metallic_roughness, :int,
      :has_pbr_specular_glossiness, :int,
      :has_clearcoat, :int,
      :has_transmission, :int,
      :has_volume, :int,
      :has_ior, :int,
      :has_specular, :int,
      :has_sheen, :int,
      :has_emissive_strength, :int,
      :pbr_metallic_roughness, Cgltf_pbr_metallic_roughness.by_value,
      :pbr_specular_glossiness, Cgltf_pbr_specular_glossiness.by_value,
      :clearcoat, Cgltf_clearcoat.by_value,
      :ior, Cgltf_ior.by_value,
      :specular, Cgltf_specular.by_value,
      :sheen, Cgltf_sheen.by_value,
      :transmission, Cgltf_transmission.by_value,
      :volume, Cgltf_volume.by_value,
      :emissive_strength, Cgltf_emissive_strength.by_value,
      :normal_texture, Cgltf_texture_view.by_value,
      :occlusion_texture, Cgltf_texture_view.by_value,
      :emissive_texture, Cgltf_texture_view.by_value,
      :emissive_factor, [:float, 3],
      :alpha_mode, :int,
      :alpha_cutoff, :float,
      :double_sided, :int,
      :unlit, :int,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_material_mapping < FFI::Struct
    layout(
      :variant, :ulong,
      :material, :pointer,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_morph_target < FFI::Struct
    layout(
      :attributes, :pointer,
      :attributes_count, :ulong,
    )
  end

  class Cgltf_draco_mesh_compression < FFI::Struct
    layout(
      :buffer_view, :pointer,
      :attributes, :pointer,
      :attributes_count, :ulong,
    )
  end

  class Cgltf_primitive < FFI::Struct
    layout(
      :type, :int,
      :indices, :pointer,
      :material, :pointer,
      :attributes, :pointer,
      :attributes_count, :ulong,
      :targets, :pointer,
      :targets_count, :ulong,
      :extras, Cgltf_extras.by_value,
      :has_draco_mesh_compression, :int,
      :draco_mesh_compression, Cgltf_draco_mesh_compression.by_value,
      :mappings, :pointer,
      :mappings_count, :ulong,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_mesh < FFI::Struct
    layout(
      :name, :pointer,
      :primitives, :pointer,
      :primitives_count, :ulong,
      :weights, :pointer,
      :weights_count, :ulong,
      :target_names, :pointer,
      :target_names_count, :ulong,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_node < FFI::Struct
    layout(
      :name, :pointer,
      :parent, :pointer,
      :children, :pointer,
      :children_count, :ulong,
      :skin, :pointer,
      :mesh, :pointer,
      :camera, :pointer,
      :light, :pointer,
      :weights, :pointer,
      :weights_count, :ulong,
      :has_translation, :int,
      :has_rotation, :int,
      :has_scale, :int,
      :has_matrix, :int,
      :translation, [:float, 3],
      :rotation, [:float, 4],
      :scale, [:float, 3],
      :matrix, [:float, 16],
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_skin < FFI::Struct
    layout(
      :name, :pointer,
      :joints, :pointer,
      :joints_count, :ulong,
      :skeleton, :pointer,
      :inverse_bind_matrices, :pointer,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_camera_perspective < FFI::Struct
    layout(
      :has_aspect_ratio, :int,
      :aspect_ratio, :float,
      :yfov, :float,
      :has_zfar, :int,
      :zfar, :float,
      :znear, :float,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_camera_orthographic < FFI::Struct
    layout(
      :xmag, :float,
      :ymag, :float,
      :zfar, :float,
      :znear, :float,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_light < FFI::Struct
    layout(
      :name, :pointer,
      :color, [:float, 3],
      :intensity, :float,
      :type, :int,
      :range, :float,
      :spot_inner_cone_angle, :float,
      :spot_outer_cone_angle, :float,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_scene < FFI::Struct
    layout(
      :name, :pointer,
      :nodes, :pointer,
      :nodes_count, :ulong,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_animation_sampler < FFI::Struct
    layout(
      :input, :pointer,
      :output, :pointer,
      :interpolation, :int,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_animation_channel < FFI::Struct
    layout(
      :sampler, :pointer,
      :target_node, :pointer,
      :target_path, :int,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_animation < FFI::Struct
    layout(
      :name, :pointer,
      :samplers, :pointer,
      :samplers_count, :ulong,
      :channels, :pointer,
      :channels_count, :ulong,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_material_variant < FFI::Struct
    layout(
      :name, :pointer,
      :extras, Cgltf_extras.by_value,
    )
  end

  class Cgltf_asset < FFI::Struct
    layout(
      :copyright, :pointer,
      :generator, :pointer,
      :version, :pointer,
      :min_version, :pointer,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :ulong,
      :extensions, :pointer,
    )
  end

  class Cgltf_data < FFI::Struct
    layout(
      :file_type, :int,
      :file_data, :pointer,
      :asset, Cgltf_asset.by_value,
      :meshes, :pointer,
      :meshes_count, :ulong,
      :materials, :pointer,
      :materials_count, :ulong,
      :accessors, :pointer,
      :accessors_count, :ulong,
      :buffer_views, :pointer,
      :buffer_views_count, :ulong,
      :buffers, :pointer,
      :buffers_count, :ulong,
      :images, :pointer,
      :images_count, :ulong,
      :textures, :pointer,
      :textures_count, :ulong,
      :samplers, :pointer,
      :samplers_count, :ulong,
      :skins, :pointer,
      :skins_count, :ulong,
      :cameras, :pointer,
      :cameras_count, :ulong,
      :lights, :pointer,
      :lights_count, :ulong,
      :nodes, :pointer,
      :nodes_count, :ulong,
      :scenes, :pointer,
      :scenes_count, :ulong,
      :scene, :pointer,
      :animations, :pointer,
      :animations_count, :ulong,
      :variants, :pointer,
      :variants_count, :ulong,
      :extras, Cgltf_extras.by_value,
      :data_extensions_count, :ulong,
      :data_extensions, :pointer,
      :extensions_used, :pointer,
      :extensions_used_count, :ulong,
      :extensions_required, :pointer,
      :extensions_required_count, :ulong,
      :json, :pointer,
      :json_size, :ulong,
      :bin, :pointer,
      :bin_size, :ulong,
      :memory, Cgltf_memory_options.by_value,
      :file, Cgltf_file_options.by_value,
    )
  end


  class Cgltf_camera_hidden < FFI::Union
    layout(
      :perspective, Cgltf_camera_perspective.by_value,
      :orthographic, Cgltf_camera_orthographic.by_value,
    )
  end

  class Cgltf_camera < FFI::Struct
    layout(
      :name, :pointer,
      :type, :int,
      :data, Cgltf_camera_hidden.by_value,
      :extras, Cgltf_extras.by_value,
      :extensions_count, :int,
      :extensions, :pointer,
    )
  end


  # Function

  def self.setup_cgltf_symbols()
    symbols = [
      :cgltf_parse,
      :cgltf_parse_file,
      :cgltf_load_buffers,
      :cgltf_load_buffer_base64,
      :cgltf_decode_string,
      :cgltf_decode_uri,
      :cgltf_validate,
      :cgltf_free,
      :cgltf_node_transform_local,
      :cgltf_node_transform_world,
      :cgltf_accessor_read_float,
      :cgltf_accessor_read_uint,
      :cgltf_accessor_read_index,
      :cgltf_num_components,
      :cgltf_accessor_unpack_floats,
      :cgltf_copy_extras_json,
    ]
    args = {
      :cgltf_parse => [:pointer, :pointer, :int, :pointer],
      :cgltf_parse_file => [:pointer, :pointer, :pointer],
      :cgltf_load_buffers => [:pointer, :pointer, :pointer],
      :cgltf_load_buffer_base64 => [:pointer, :int, :pointer, :pointer],
      :cgltf_decode_string => [:pointer],
      :cgltf_decode_uri => [:pointer],
      :cgltf_validate => [:pointer],
      :cgltf_free => [:pointer],
      :cgltf_node_transform_local => [:pointer, :pointer],
      :cgltf_node_transform_world => [:pointer, :pointer],
      :cgltf_accessor_read_float => [:pointer, :int, :pointer, :int],
      :cgltf_accessor_read_uint => [:pointer, :int, :pointer, :int],
      :cgltf_accessor_read_index => [:pointer, :int],
      :cgltf_num_components => [:int],
      :cgltf_accessor_unpack_floats => [:pointer, :pointer, :int],
      :cgltf_copy_extras_json => [:pointer, :pointer, :pointer, :pointer],
    }
    retvals = {
      :cgltf_parse => :int,
      :cgltf_parse_file => :int,
      :cgltf_load_buffers => :int,
      :cgltf_load_buffer_base64 => :int,
      :cgltf_decode_string => :ulong,
      :cgltf_decode_uri => :ulong,
      :cgltf_validate => :int,
      :cgltf_free => :void,
      :cgltf_node_transform_local => :void,
      :cgltf_node_transform_world => :void,
      :cgltf_accessor_read_float => :int,
      :cgltf_accessor_read_uint => :int,
      :cgltf_accessor_read_index => :ulong,
      :cgltf_num_components => :ulong,
      :cgltf_accessor_unpack_floats => :ulong,
      :cgltf_copy_extras_json => :int,
    }
    symbols.each do |sym|
      begin
        attach_function sym, args[sym], retvals[sym]
      rescue FFI::NotFoundError => error
        $stderr.puts("[Warning] Failed to import #{sym} (#{error}).")
      end
    end
  end

end

