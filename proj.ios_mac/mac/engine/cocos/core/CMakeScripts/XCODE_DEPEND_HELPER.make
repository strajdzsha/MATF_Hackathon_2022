# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.cocos2d.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libcocos2d.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libcocos2d.a


PostBuild.ext_clipper.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_clipper.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_clipper.a


PostBuild.ext_convertUTF.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a


PostBuild.ext_edtaa3func.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_edtaa3func.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_edtaa3func.a


PostBuild.ext_md5.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_md5.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_md5.a


PostBuild.ext_poly2tri.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_poly2tri.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_poly2tri.a


PostBuild.ext_recast.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_recast.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_recast.a


PostBuild.ext_tinyxml2.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_tinyxml2.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_tinyxml2.a


PostBuild.ext_unzip.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_unzip.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_unzip.a


PostBuild.ext_xxhash.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxhash.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxhash.a


PostBuild.ext_xxtea.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxtea.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxtea.a


PostBuild.external.Debug:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libexternal.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libexternal.a


PostBuild.cocos2d.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libcocos2d.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libcocos2d.a


PostBuild.ext_clipper.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_clipper.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_clipper.a


PostBuild.ext_convertUTF.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a


PostBuild.ext_edtaa3func.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_edtaa3func.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_edtaa3func.a


PostBuild.ext_md5.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_md5.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_md5.a


PostBuild.ext_poly2tri.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_poly2tri.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_poly2tri.a


PostBuild.ext_recast.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_recast.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_recast.a


PostBuild.ext_tinyxml2.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_tinyxml2.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_tinyxml2.a


PostBuild.ext_unzip.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_unzip.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_unzip.a


PostBuild.ext_xxhash.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxhash.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxhash.a


PostBuild.ext_xxtea.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxtea.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxtea.a


PostBuild.external.Release:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libexternal.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libexternal.a


PostBuild.cocos2d.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libcocos2d.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libcocos2d.a


PostBuild.ext_clipper.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_clipper.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_clipper.a


PostBuild.ext_convertUTF.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a


PostBuild.ext_edtaa3func.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_edtaa3func.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_edtaa3func.a


PostBuild.ext_md5.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_md5.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_md5.a


PostBuild.ext_poly2tri.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_poly2tri.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_poly2tri.a


PostBuild.ext_recast.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_recast.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_recast.a


PostBuild.ext_tinyxml2.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_tinyxml2.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_tinyxml2.a


PostBuild.ext_unzip.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_unzip.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_unzip.a


PostBuild.ext_xxhash.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxhash.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxhash.a


PostBuild.ext_xxtea.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxtea.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxtea.a


PostBuild.external.MinSizeRel:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libexternal.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libexternal.a


PostBuild.cocos2d.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libcocos2d.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libcocos2d.a


PostBuild.ext_clipper.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_clipper.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_clipper.a


PostBuild.ext_convertUTF.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a


PostBuild.ext_edtaa3func.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_edtaa3func.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_edtaa3func.a


PostBuild.ext_md5.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_md5.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_md5.a


PostBuild.ext_poly2tri.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_poly2tri.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_poly2tri.a


PostBuild.ext_recast.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_recast.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_recast.a


PostBuild.ext_tinyxml2.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_tinyxml2.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_tinyxml2.a


PostBuild.ext_unzip.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_unzip.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_unzip.a


PostBuild.ext_xxhash.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxhash.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxhash.a


PostBuild.ext_xxtea.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxtea.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxtea.a


PostBuild.external.RelWithDebInfo:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libexternal.a:
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libexternal.a




# For each target create a dummy ruleso the target does not have to exist
