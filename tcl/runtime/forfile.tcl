#
# forfile.tcl --
#
# Proc to execute code on every line of a file.
#------------------------------------------------------------------------------
# Copyright 1992 Karl Lehenbauer and Mark Diekhans.
#
# Permission to use, copy, modify, and distribute this software and its
# documentation for any purpose and without fee is hereby granted, provided
# that the above copyright notice appear in all copies.  Karl Lehenbauer and
# Mark Diekhans make no representations about the suitability of this
# software for any purpose.  It is provided "as is" without express or
# implied warranty.
#------------------------------------------------------------------------------
# $Id: forfile.tcl,v 1.1 1992/09/20 23:30:27 markd Exp markd $
#------------------------------------------------------------------------------
#

#@package: TclX-forfile for_file

proc for_file {var filename code} {
    upvar $var line
    set fp [open $filename r]
    while {[gets $fp line] >= 0} {
        uplevel $code
    }
    close $fp
}

