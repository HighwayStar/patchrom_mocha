#
## Makefile for nexus 6P
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := 

local-phone-priv-apps := 

local-density := XXXHDPI
local-target-bit := 32

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
