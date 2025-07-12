def apply(config, args):
    config["baseimg"] = "evangelion.z64"
    config["myimg"] = "build/eva.z64"
    config["mapfile"] = "build/eva.map"
    config["source_directories"] = ["."]
    #config["arch"] = "mips"
    #config["map_format"] = "gnu" # gnu or mw
    #config["mw_build_dir"] = "build/" # only needed for mw map format
    #config["makeflags"] = []
    #config["objdump_executable"] = ""