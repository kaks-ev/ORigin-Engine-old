-- Setting Solution
workspace "ORigin"
    location "../"
    architecture "x64"

    configurations {
        "Debug",
        "Release",
        "Dist"
    }

    startproject "Editor"

    mainProjectFiles = "%{wks.location}/%{prj.name}"
    vendorProjectFiles = "%{wks.location}/Origin/vendor/projectFiles"

    mainOutputdir = "%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}"
    intermediateOutputdir = "%{wks.location}/bin-int/%{cfg.buildcfg}/%{prj.name}"

include "projects/ProjectSwitcher.lua"
include "dependencies/Dependencies.lua"

group "Engine"
include "projects/ORigin.lua"
group ""

group"Programs"
include "projects/Editor.lua"
include "projects/Sandbox.lua"
include "projects/ORiginBuilderTools.lua"
group ""