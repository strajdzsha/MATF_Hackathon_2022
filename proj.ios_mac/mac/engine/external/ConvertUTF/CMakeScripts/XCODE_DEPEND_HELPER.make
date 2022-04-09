# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.ext_convertUTF.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a


PostBuild.ext_convertUTF.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a


PostBuild.ext_convertUTF.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a


PostBuild.ext_convertUTF.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a




# For each target create a dummy ruleso the target does not have to exist
