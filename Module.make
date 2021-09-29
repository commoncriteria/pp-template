# Optionally include some User preferences.
-include ~/commoncriteria/User.make
-include  User.make
BASE=ModuleTemplate
TRANS?=transforms
# Include the Module Makefile
include $(TRANS)/module/Module.make

