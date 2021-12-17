# PYTHONPATH=/usr/local/Cellar/llvm/6.0.0/lib/python2.7/site-packages python generate_initial_define_mapping.py > cgltf_define_mapping.json

import cgltf_parser, cgltf_generator

if __name__ == "__main__":
    cgltf_parser.generate_define_list()
