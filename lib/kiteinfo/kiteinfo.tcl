#-----------------------------------------------------------------------
# TITLE:
#   kiteinfo.tcl
#
# PROJECT:
#   mars - Mars Simulation Support Library
#
# DESCRIPTION:
#   Kite: kiteinfo(n) Package
#
#   This package was auto-generated by Kite to provide the 
#   project mars's code with access to the contents of its 
#   project.kite file at runtime.
#
#   Generated by Kite.
#-----------------------------------------------------------------------

namespace eval ::kiteinfo:: {
    variable kiteInfo

    array set kiteInfo {
        reqver-Tktable 2.11
        build-libTiff {make clean all}
        local-Img 0
        reqver-comm 4.6
        clean-libGTiff {make clean}
        local-Tktable 0
        xfiles docs/mag.docx
        apps mars
        build-libGTiff {make clean all}
        local-Tkhtml 0
        dists install-%platform
        build-Marsbin {make -f MakeTEA clean all}
        build-libGeostars {make clean all}
        local-tablelist 0
        local-treectrl 0
        clean-libGeostars {make clean}
        reqver-kiteutils 0.4.5
        url-docs/mag.docx https://pepper.jpl.nasa.gov/kite/xdocs/mars/3.0/mag-20140826.docx
        binary-marsgui 0
        distpat-install-%platform {
    README.md
    %apps
    %libs
    docs/*.html
    docs/man*/*.html
    docs/*.docx
}
        local-snit 0
        force-mars 0
        build-libGeotrans {make clean all}
        reqver-treectrl 2.4
        reqver-BWidget 1.9
        clean-libGeotrans {make clean}
        binary-marsutil 0
        provides {marsutil marsgui simlib Marsbin}
        description {Mars Simulation Support Library}
        local-BWidget 0
        reqver-sqlite3 3.8
        shell {}
        clean-libTiff {make clean}
        reqver-snit 2.3
        name mars
        icon-mars {}
        local-sqlite3 0
        reqver-tablelist 5.11
        exclude-mars {}
        binary-simlib 0
        apptype-mars kit
        clean-Marsbin {make -f MakeTEA clean}
        reqver-Tkhtml 3.0
        requires {snit sqlite3 comm Img BWidget treectrl tablelist Tktable Tkhtml kiteutils}
        poc William.H.Duquette@jpl.nasa.gov
        srcs {libGeotrans libGeostars libTiff libGTiff Marsbin}
        local-comm 0
        gui-mars 0
        local-kiteutils 1
        version 3.0.12
        binary-Marsbin 1
        reqver-Img 1.4.1
    }

    namespace export \
        project      \
        version      \
        description  \
        includes     \
        gui          \
        require

    namespace ensemble create
}

#-----------------------------------------------------------------------
# Commands

# project
#
# Returns the project name.
# FIXME: should be kiteinfo(project) when project.tcl is updated.

proc ::kiteinfo::project {} {
    variable kiteInfo

    return $kiteInfo(name)
}

# version
#
# Returns the project version number.

proc ::kiteinfo::version {} {
    variable kiteInfo

    return $kiteInfo(version)
}

# description
#
# Returns the project description.

proc ::kiteinfo::description {} {
    variable kiteInfo

    return $kiteInfo(description)
}

# includes
#
# Returns the names of the "include" libraries.

proc ::kiteinfo::includes {} {
    variable kiteInfo

    return $kiteInfo(includes)
}

# gui app
#
# app  - An application name
#
# Returns 1 if the app is supposed to have a GUI, and 0 otherwise.

proc ::kiteinfo::gui {app} {
    variable kiteInfo

    return $kiteInfo(gui-$app)
}
