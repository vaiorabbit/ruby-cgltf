# Usage #

These instructions are tested only on macOS environment.

*   Generate mapping tables with ./generate_initial_mapping.sh to get
    *   cgltf_cindex_mapping.json
    *   cgltf_define_mapping.json

*   Edit cgltf_define_mapping.json
    *   This mapping table contains '#define' macros collected from headers in ../cgltf_dll/cgltf/ folder.
    *   Each lines represent key-value pair that will be used for generated Python codes.
        *   ex.) The line collected from 'cgltf.h":
                "CGLTF_VERSION" : "\"4.0\""
            will be appeared in cgltf.py:
                CGLTF_VERSION = "4.0"
        *   So if you find value that is inappropreate for Python syntax,
            you should fix it or make it 'null'. The 'null'ed marcros will not
            appear in the generated Python codes.

*   Run batch_generate.sh
