# Include if it exists (so people could do set their own settings
-include User.make
DIFF_TAGS="v1.0"
TRANS?=transforms
PP2HTML_XSL=local/xsl/CountingNotes.xsl
include $(TRANS)/Helper.make

