# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.MatHack.Debug:
PostBuild.cocos2d.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.external.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_recast.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_tinyxml2.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxhash.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxtea.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_clipper.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_edtaa3func.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_convertUTF.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_poly2tri.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_md5.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_unzip.Debug: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack:\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libcocos2d.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libexternal.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/Box2D/prebuilt/mac/libbox2d.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/chipmunk/prebuilt/mac/libchipmunk.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/freetype2/prebuilt/mac/libfreetype.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_recast.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletDynamics.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletCollision.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletMultiThreaded.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libMiniCL.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/jpeg/prebuilt/mac/libjpeg.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/webp/prebuilt/mac/libwebp.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/websockets/prebuilt/mac/libwebsockets.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libssl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libcrypto.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/uv/prebuilt/mac/libuv_a.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_tinyxml2.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxhash.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxtea.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_clipper.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_edtaa3func.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_poly2tri.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_md5.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/curl/prebuilt/mac/libcurl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/png/prebuilt/mac/libpng.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glfw3/prebuilt/mac/libglfw3.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/zlib/prebuilt/mac/libz.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_unzip.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglcpp-library.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglsl_optimizer.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libmesa.a\
	/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libiconv.tbd
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Debug/MatHack.app/Contents/MacOS/MatHack


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


PostBuild.MatHack.Release:
PostBuild.cocos2d.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.external.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_recast.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_tinyxml2.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxhash.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxtea.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_clipper.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_edtaa3func.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_convertUTF.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_poly2tri.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_md5.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_unzip.Release: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack:\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libcocos2d.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libexternal.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/Box2D/prebuilt/mac/libbox2d.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/chipmunk/prebuilt/mac/libchipmunk.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/freetype2/prebuilt/mac/libfreetype.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_recast.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletDynamics.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletCollision.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletMultiThreaded.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libMiniCL.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/jpeg/prebuilt/mac/libjpeg.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/webp/prebuilt/mac/libwebp.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/websockets/prebuilt/mac/libwebsockets.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libssl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libcrypto.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/uv/prebuilt/mac/libuv_a.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_tinyxml2.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxhash.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxtea.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_clipper.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_edtaa3func.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_poly2tri.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_md5.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/curl/prebuilt/mac/libcurl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/png/prebuilt/mac/libpng.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glfw3/prebuilt/mac/libglfw3.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/zlib/prebuilt/mac/libz.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_unzip.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglcpp-library.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglsl_optimizer.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libmesa.a\
	/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libiconv.tbd
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/Release/MatHack.app/Contents/MacOS/MatHack


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


PostBuild.MatHack.MinSizeRel:
PostBuild.cocos2d.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.external.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_recast.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_tinyxml2.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxhash.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxtea.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_clipper.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_edtaa3func.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_convertUTF.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_poly2tri.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_md5.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_unzip.MinSizeRel: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack:\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libcocos2d.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libexternal.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/Box2D/prebuilt/mac/libbox2d.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/chipmunk/prebuilt/mac/libchipmunk.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/freetype2/prebuilt/mac/libfreetype.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_recast.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletDynamics.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletCollision.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletMultiThreaded.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libMiniCL.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/jpeg/prebuilt/mac/libjpeg.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/webp/prebuilt/mac/libwebp.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/websockets/prebuilt/mac/libwebsockets.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libssl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libcrypto.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/uv/prebuilt/mac/libuv_a.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_tinyxml2.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxhash.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxtea.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_clipper.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_edtaa3func.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_poly2tri.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_md5.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/curl/prebuilt/mac/libcurl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/png/prebuilt/mac/libpng.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glfw3/prebuilt/mac/libglfw3.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/zlib/prebuilt/mac/libz.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_unzip.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglcpp-library.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglsl_optimizer.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libmesa.a\
	/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libiconv.tbd
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/MinSizeRel/MatHack.app/Contents/MacOS/MatHack


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


PostBuild.MatHack.RelWithDebInfo:
PostBuild.cocos2d.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.external.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_recast.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_tinyxml2.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxhash.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_xxtea.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_clipper.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_edtaa3func.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_convertUTF.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_poly2tri.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_md5.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
PostBuild.ext_unzip.RelWithDebInfo: /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack:\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libcocos2d.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libexternal.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/Box2D/prebuilt/mac/libbox2d.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/chipmunk/prebuilt/mac/libchipmunk.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/freetype2/prebuilt/mac/libfreetype.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_recast.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletDynamics.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletCollision.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletMultiThreaded.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libMiniCL.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/jpeg/prebuilt/mac/libjpeg.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/webp/prebuilt/mac/libwebp.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/websockets/prebuilt/mac/libwebsockets.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libssl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libcrypto.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/uv/prebuilt/mac/libuv_a.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_tinyxml2.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxhash.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxtea.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_clipper.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_edtaa3func.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_poly2tri.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_md5.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/curl/prebuilt/mac/libcurl.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/png/prebuilt/mac/libpng.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glfw3/prebuilt/mac/libglfw3.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/zlib/prebuilt/mac/libz.a\
	/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_unzip.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglcpp-library.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglsl_optimizer.a\
	/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libmesa.a\
	/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libiconv.tbd
	/bin/rm -f /Users/mbp/Desktop/MatHack/proj.ios_mac/mac/bin/MatHack/RelWithDebInfo/MatHack.app/Contents/MacOS/MatHack


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
/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libiconv.tbd:
/Users/mbp/Desktop/MatHack/cocos2d/external/Box2D/prebuilt/mac/libbox2d.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletCollision.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletDynamics.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libBulletMultiThreaded.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libLinearMath.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/bullet/prebuilt/mac/libMiniCL.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/chipmunk/prebuilt/mac/libchipmunk.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/curl/prebuilt/mac/libcurl.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/freetype2/prebuilt/mac/libfreetype.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/glfw3/prebuilt/mac/libglfw3.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglcpp-library.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libglsl_optimizer.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/glsl-optimizer/prebuilt/mac/libmesa.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/jpeg/prebuilt/mac/libjpeg.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libcrypto.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/openssl/prebuilt/mac/libssl.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/png/prebuilt/mac/libpng.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/uv/prebuilt/mac/libuv_a.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/webp/prebuilt/mac/libwebp.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/websockets/prebuilt/mac/libwebsockets.a:
/Users/mbp/Desktop/MatHack/cocos2d/external/zlib/prebuilt/mac/libz.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libcocos2d.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_clipper.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_convertUTF.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_edtaa3func.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_md5.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_poly2tri.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_recast.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_tinyxml2.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_unzip.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxhash.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libext_xxtea.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Debug/libexternal.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libcocos2d.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_clipper.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_convertUTF.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_edtaa3func.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_md5.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_poly2tri.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_recast.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_tinyxml2.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_unzip.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxhash.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libext_xxtea.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/MinSizeRel/libexternal.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libcocos2d.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_clipper.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_convertUTF.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_edtaa3func.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_md5.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_poly2tri.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_recast.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_tinyxml2.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_unzip.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxhash.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libext_xxtea.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/RelWithDebInfo/libexternal.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libcocos2d.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_clipper.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_convertUTF.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_edtaa3func.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_md5.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_poly2tri.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_recast.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_tinyxml2.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_unzip.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxhash.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libext_xxtea.a:
/Users/mbp/Desktop/MatHack/proj.ios_mac/mac/lib/Release/libexternal.a:
