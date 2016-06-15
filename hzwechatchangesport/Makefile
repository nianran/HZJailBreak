THEOS_DEVICE_IP = 192.168.1.101
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HZWeChatChangeSport
HZWeChatChangeSport_FILES = Tweak.xm
HZWeChatChangeSport_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
