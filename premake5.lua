workspace "CTemplate"
    configurations {"Debug32", "Release32", "Debug64", "Release64"}

    filter "configurations:*32"
        architecture "x32"

    filter "configurations:*64"
        architecture "x86_64"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "CTemplate"
    location "."
    kind "ConsoleApp"
    language "C"

    targetdir ("out/bin/"..outputdir.."/%{prj.name}")
    objdir ("out/obj/"..outputdir.."/${prj.name}")

    files 
    {
        "src/**.c",
        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        systemversion "latest"

    filter "configurations:Release*"
        optimize "On"

     filter "configurations:Debug*"
        symbols "On"