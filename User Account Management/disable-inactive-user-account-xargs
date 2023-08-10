#!/bin/bash

# Author: Neha Singh
# Date : 08/10/2023
# Description: This script will disable inactive user account (test123, test345) with xargs
# Modified: 08/10/2023

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} sudo usermod -L {}



# NOTE: After running the script the user account with name test123 and test345 will get disabled.
# Try login the user account: This will throw out as "Authentication failure"
# The same thing can be checked under:
#        sudo cat /etc/shadow
#   test123:!$6$iju7faMtB4CxI0XP$u7kqeoF81csdlsxZMbVfY.Smoxgw7nMyWVekoJ/fdqgfiysPCQDcWik1ZfJLkaxZWGrBF4dqdTkOIO7EqL8Ly1:19579:0:99999:7:::
#   test345:!$6$A2Maau6lMIiiRnFq$FwKv5R.9ZsCm9jB7wBpnvJqaYlBPXyyTksVCBZPJrn.f6FzeOWgJan98LpDZSEs.g32uTcOndG3uAYj94wajR0:19579:0:99999:7:::
#
# The "!" mark verifies the same
# To enable user - remove the "!" mark
