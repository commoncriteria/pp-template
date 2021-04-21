# Optionally include some User preferences.
-include  User.make
BASE=cpp-template
TRANS?=transforms
# Include the Module Makefile
include $(TRANS)/cPP.make

