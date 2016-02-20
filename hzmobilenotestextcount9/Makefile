THEOS_DEVICE_IP = 192.168.1.105
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include theos/makefiles/common.mk

TWEAK_NAME = hzmobilenotestextcount9
hzmobilenotestextcount9_FILES = Tweak.xm
hzmobilenotestextcount9_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileNotes"
