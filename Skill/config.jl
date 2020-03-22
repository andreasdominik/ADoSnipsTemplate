# DO NOT CHANGE THE FOLLOWING LINES UNLESS YOU KNOW
# WHAT YOU ARE DOING!
# set CONTINUE_WO_HOTWORD to true to be able to chain
# commands without need of a hotword in between:
#
const CONTINUE_WO_HOTWORD = false
const DEVELOPER_NAME = "andreasdominik"
Snips.setDeveloperName(DEVELOPER_NAME)
Snips.setModule(@__MODULE__)
#
# language settings:
# Snips.LANG in QnD(Snips) is defined from susi.toml or set
# to "en" if no susi.toml found.
# This will override LANG by config.ini if a key "language"
# is defined locally:
#
if Snips.isConfigValid(:language)
    Snips.setLanguage(Snips.getConfig(:language))
end
# or LANG can be set manually here:
# Snips.setLanguage("fr")
#
# set a local const with LANG:
#
const LANG = Snips.getLanguage()
#
# END OF DO-NOT-CHANGE.


# ************************************************************
# INSERT HERE THE DEFINITIONS OF SLOTS AND CONFIG.INI ENTRIES:
# ************************************************************
#
#
# Slots:
# Name of slots to be extracted from intents:
#
const SLOT_WORD = "a_word"

# name of entry in config.ini:
#
const INI_MY_NAME = "my_name"


# INSERT HERE LINKS BETWEEN ACTIONS AND INTENTS:
#
# intent is linked to action{Funktion}
# the action is only matched, if
#   * intentname matches and
#   * if the siteId matches, if site is  defined in config.ini
#     (such as: "switch TV in room abc").
#
Snips.registerIntentAction("pleaseRepeat", templateAction)
