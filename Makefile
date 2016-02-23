export CFLAGS=-Wp,"-DWTFJHTWEAKNAME=@\"HMD7CP87LA6Q6V2\",-DPROTOTYPE"
include theos/makefiles/common.mk
export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:7.0:7.0
TWEAK_NAME = HMD7CP87LA6Q6V2
HMD7CP87LA6Q6V2_FILES = Tweak.xm CompileDefines.xm Hooks/APIHooks/CommonCryptor.xm Hooks/APIHooks/CommonDigest.xm Hooks/APIHooks/CommonHMAC.xm Hooks/APIHooks/CommonKeyDerivation.xm Hooks/APIHooks/CoreTelephony.xm Hooks/APIHooks/dlfcn.xm Hooks/APIHooks/Keychain.xm Hooks/APIHooks/libC.xm Hooks/APIHooks/libMobileGestalt.xm Hooks/APIHooks/NSData.xm Hooks/APIHooks/NSFileHandle.xm Hooks/APIHooks/NSFileManager.xm Hooks/APIHooks/NSHTTPCookie.xm Hooks/APIHooks/NSInputStream.xm Hooks/APIHooks/NSKeyedArchiver.xm Hooks/APIHooks/NSKeyedUnarchiver.xm Hooks/APIHooks/NSOutputStream.xm Hooks/APIHooks/NSURLConnection.xm Hooks/APIHooks/NSURLCredential.xm Hooks/APIHooks/NSURLSession.xm Hooks/APIHooks/NSUserDefaults.xm Hooks/APIHooks/NSXMLParser.xm Hooks/APIHooks/Security.xm Hooks/APIHooks/SSLKillSwitch.xm Hooks/APIHooks/UIPasteboard.xm Hooks/SDKHooks/FclBlowfish.xm Hooks/SDKHooks/OpenSSLAES.xm Hooks/SDKHooks/OpenSSLBlowFish.xm Hooks/SDKHooks/OpenSSLMD5.xm Hooks/SDKHooks/OpenSSLSHA1.xm Hooks/SDKHooks/OpenSSLSHA512.xm Hooks/Utils/CallStackInspector.m Hooks/Utils/CallTracer.m Hooks/Utils/DelegateProxies.m Hooks/Utils/NSURLConnectionDelegateProx.m Hooks/Utils/NSURLSessionDelegateProxy.m Hooks/Utils/PlistObjectConverter.m Hooks/Utils/RuntimeUtils.m Hooks/Utils/SQLiteStorage.m Hooks/Utils/Utils.m
ADDITIONAL_CCFLAGS  = -Qunused-arguments
ADDITIONAL_LDFLAGS  = -Wl,-segalign,4000,-sectcreate,WTFJH,SIGDB,./SignatureDatabase.plist
HMD7CP87LA6Q6V2_LIBRARIES = sqlite3 substrate
HMD7CP87LA6Q6V2_FRAMEWORKS = Foundation UIKit Security
include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 SpringBoard"