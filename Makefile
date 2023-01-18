# Include if it exists (so people could do set their own settings
-include User.make
-include ~/commoncriteria/User.make
DIFF_TAGS=master
TRANS?=transforms
include $(TRANS)/Helper.make

