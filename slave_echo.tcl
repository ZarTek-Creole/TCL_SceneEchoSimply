# ##
# script SceneEchoSimply
# https://github.com/ZarTek-Creole/TCL_SceneEchoSimply
#
# ANNONCE = prebot ANNONCE  (eggnet_annonce_)
# SITE    = FROM TOPSITE    (eggnet_site_)
# ECHO    = PRENET          (eggnet_echo_)
# ##
# newdir, pre, complete, nuke, unnuke, modnuke, delpre, undelpre
# ##
namespace eval ::SES_ECHO {
	variable SOURCE_NAME	"ZoNeNET"
	array set COMMANDS [list 				\
		"PRE"			"!sitepre" 			\
		"NEWDIR"		"!newdir" 			\
		"NUKE"			"!nuke" 			\
		"UNNUKE"		"!unnuke" 			\
		"MODNUKE"		"!modnuke" 			\
		"MODUNNUKE"		"!modunnuke" 		\
		"DELPRE"		"!delpre" 			\
		"UNDELPRE"		"!undelpre" 		\
		"P2P"			"!addp2p" 		\
		];
	namespace eval ::SES_ECHO::${SOURCE_NAME} {}
}
proc ::SES_ECHO::INIT {} {
	package require SES:FUNCTIONS
	foreach { CMD_NAME VALUE_LIST } [array get ::SES_ECHO::COMMANDS] {
		foreach { CMD_VALUE } ${VALUE_LIST} {
			if { ${CMD_VALUE} == "" } { continue; }
			bind pub - ${CMD_VALUE} ::SES_ECHO::${SOURCE_NAME}::ECHO_[string toupper ${CMD_NAME}]
		}
	}
	putlog "script SES_ECHO v[package provide SES:ECHO 1.0.0] by ZarTek-Creole loaded."
}
proc ::SES_ECHO::SENT { MESSAGE } {
	putallbots ${MESSAGE}
	putlog  ${MESSAGE}

}
# !sitepre American.Food.Trip.-.mit.Guy.Fieri.S19E06.Key.West.Muschelhochburg.und.Haehneparadies.German.DOKU.1080p.HDTV.x264-ATAX TV 28 1252

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_PRE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}]
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0];
	set Section_Name	[lindex ${arg} 1];
	set Release_File	[lindex ${arg} 2];
	set Release_Size	[lindex ${arg} 3];
	set Group_Name		"-"
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${Section_Name}*${Release_File}*${Release_Size}*${Group_Name} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"	}
	}
}

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_NEWDIR { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}]
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0];
	set Section_Name	[lindex ${arg} 1];
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${Section_Name} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !nuke The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_NUKE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0];
	set NUKE			[lindex ${arg} 1];
	set NET				[lindex ${arg} 2];
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${NUKE}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !unnuke The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_UNNUKE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]

	set Release_Name	[lindex ${arg} 0];
	set UNNUKE			[lindex ${arg} 1];
	set NET				[lindex ${arg} 2];
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${UNNUKE}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !modnuke The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_MODNUKE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0]
	set MODNUKE			[lindex ${arg} 1]
	set NET				[lindex ${arg} 2]
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${MODNUKE}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !modunnuke The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_MODUNNUKE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0]
	set MODUNNUKE		[lindex ${arg} 1]
	set NET				[lindex ${arg} 2]
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${MODUNNUKE}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !delpre The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet
# !(un)delpre <Release_Name> <reason> <source>

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_DELPRE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0]
	set DEL				[lindex ${arg} 1]
	set NET				[lindex ${arg} 2]
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${DEL}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}
# !delpre The.Takeover.2022.GERMAN.1080P.WEB.X264-WAYNE dupe.DMPD.2022-11-01 LocalNet
# !(un)delpre <Release_Name> <reason> <source>

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_UNDELPRE { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}];
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0]
	set UNDEL			[lindex ${arg} 1]
	set NET				[lindex ${arg} 2]
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${UNDEL}*${NET} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}

}

proc ::SES_ECHO::${SOURCE_NAME}::ECHO_P2P { nick uhost hand chan arg } {
	set arg				[stripcodes * ${arg}]
	set WHAT			[lindex [split [lindex [info level 0] 0] ":"] end]
	set Release_Name	[lindex ${arg} 0]
	set Section_Name	"-"
	set SRC_Name		[lindex ${arg} 1]
	if { [FCT:MEMORY:QUERY ${WHAT} ${Release_Name}] } {
		::SES_ECHO::SENT "eggnet_[string tolower ${WHAT}] ${Release_Name}*${Section_Name}*${SRC_Name} ${::SES_ECHO::SOURCE_NAME}*${::network}*${chan}*${nick}"
	}
}
::SES_ECHO::INIT