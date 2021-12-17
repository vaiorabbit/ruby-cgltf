import cgltf_parser, cgltf_generator

STRUCT_POSTFIX_CAMERA = """
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
"""

if __name__ == "__main__":

    ctx = cgltf_parser.ParseContext('../cgltf_dll/cgltf/cgltf.h')
    cgltf_parser.execute(ctx)

    ctx.decl_structs['cgltf_camera'] = None

    cgltf_generator.sanitize(ctx)
    cgltf_generator.generate(ctx,
                             struct_postfix = STRUCT_POSTFIX_CAMERA,
                             module_name = 'cgltf')
