################################################################################
#
# helloworld
#
################################################################################

HELLOWORLD_VERSION = 1.0
HELLOWORLD_SITE = $(call github,sightvisiontech,helloworld_buildroot_pkg,master)

define HELLOWORLD_BUILD_CMDS
   	$(TARGET_CC) $(TARGET_CFLAGS) -Wall -std=gnu11 -g -D_REENTRANT -static $(@D)/helloworld.c -o $(@D)/helloworld
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0777 $(@D)/helloworld \
		$(TARGET_DIR)/root/

endef

$(eval $(generic-package))
