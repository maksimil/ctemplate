workspace "CTemplate"
    configurations {"Debug32", "Release32", "Debug64", "Release64"}

    filter "configurations:*32"
        architecture "x32"

    filter "configurations:*64"
        architecture "x86_64"

-- output
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/%{prj.name}"

Output = {}
Output["bin"] = "%{wks.location}/bin/"..outputdir
Output["obj"] = "%{wks.location}/bin-int/"..outputdir

-- include dirs
Include = {}

-- libraries
Libraries = {}

-- modules
include "CTemplate"
