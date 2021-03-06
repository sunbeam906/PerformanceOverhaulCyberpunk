set_languages("cxx17")

add_requires("zlib", "spdlog", "nlohmann_json", "minhook", "imgui")

add_rules("mode.debug", "mode.release")

--add_ldflags("/LTCG", "/OPT:REF")
--add_cxflags("/Ot", "/GL", "/Ob2", "/Oi", "/GS-")

--set_optimize("fastest")

target("cyber_engine_tweaks")
    add_defines("KIERO_USE_MINHOOK=1", "KIERO_INCLUDE_D3D12=1")
    set_kind("shared")
    set_filename("cyber_engine_tweaks.asi")
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src/")
    add_syslinks("User32", "d3d11", "D3D12")
    add_packages("zlib", "spdlog", "nlohmann_json", "minhook", "imgui")
