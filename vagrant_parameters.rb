
#
# Synced folders, this is a hash of mount points for the vagrant box.
# Allows developers to set multiple projects on a single Vagrant box (shared hosting).
#
# Setting is: mount_point => path_on_your_machine
#
# The provisioning scripts will presume the mount point (so don't change those).
#
# 1. Copy this file to vagrant_parameters.rb
#
# 2. When you change your vagrant_parameters.rb file, use the following command:
#       vagrant reload
#

$synced_projects = [
    "haagsedonarcup",
    "herstelkamer",
    "donargym",
    "donarteamcup",
#    "jurymarktplaats",
]

$synced_folders = {
    "/vagrant/haagsedonarcup"  => "/Users/mark/Sites/haagsedonarcup",
    "/vagrant/herstelkamer"    => "/Users/mark/Sites/herstelkamer.nl",
    "/vagrant/donargym"        => "/Users/mark/Sites/donargym",
    "/vagrant/donarteamcup"    => "/Users/mark/Sites/donarteamcup",
#    "/vagrant/jurymarktplaats" => "/Users/mark/Sites/jurymarktplaats",
}
