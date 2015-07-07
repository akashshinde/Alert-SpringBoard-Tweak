ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TWEAK_NAME = WelcomeWagon
WelcomeWagon_FILES = Tweak.xm
WelcomeWagon_FRAMEWORKS = UIKit,Foundation,SpringBoard

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
