THEOS_DEVICE_IP = 192.168.1.103
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include theos/makefiles/common.mk

TWEAK_NAME = HZTestLuckyBag
HZTestLuckyBag_FILES = Tweak.xm
HZTestLuckyBag_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
