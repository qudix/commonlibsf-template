-- set minimum xmake version
set_xmakever("2.8.2")

-- includes
includes("lib/commonlibsf")

-- set project
set_project("commonlibsf-template")
set_version("0.0.0")
set_license("GPL-3.0")

-- set defaults
set_languages("c++23")
set_warnings("allextra")

-- set policies
set_policy("package.requires_lock", true)

-- add rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- setup targets
target("commonlibsf-template")
    -- add dependencies to target
    add_deps("commonlibsf")

    -- add commonlibsf plugin
    add_rules("commonlibsf.plugin", {
        name = "commonlibsf-template",
        author = "Author Name",
        description = "SFSE plugin template using CommonLibSF",
        email = "user@site.com"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")
