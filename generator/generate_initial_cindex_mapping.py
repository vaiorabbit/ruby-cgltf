# PYTHONPATH=/usr/local/Cellar/llvm/7.0.0/lib/python2.7/site-packages python generate_initial_cindex_mapping.py > cgltf_cindex_mapping.json

import cgltf_parser, cgltf_generator

if __name__ == "__main__":
    cgltf_parser.generate_type_mapping()
