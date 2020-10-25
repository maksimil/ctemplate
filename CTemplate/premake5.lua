project "CTemplate"
    kind "ConsoleApp"
    language "C"
    staticruntime "on"
    
    targetdir (Output["bin"])
    objdir (Output["obj"])

    files
    {
        "src/**.h",
        "src/**.c"
    }

    includedirs
    {
        "src"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug*"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release*"
        runtime "Release"
        optimize "on"
