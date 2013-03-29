# cloudapp-power-cli

A powerful CLI for [CloudApp](http://getcloudapp.com/) written in Ruby, formerly named *cloudapp-cli* that makes the complete CloudApp API available on command line.

**[Works with regenwolken](https://github.com/posativ/regenwolken)**

## Installation

Install it via:

	gem install cloudapp-power-cli

## Usage

Register:

	cloudapp register us3r passw0rd

Configuration of persistent login data:

	cloudapp login us3r passw0rd

(Note: If you tell it so e.g. via the above command or during `cloudapp register`, the cli will save your login data to '~/.cloudapp-cli' to prevent you from specifing it on every call.)

Use per-call login data (**no** login data will be written to disk at all):

	cloudapp -u user:pwd command...

Other Operations:

	cloudapp account   # show your account details (-v shows even more)

	cloudapp list   # list first page of drops (5 per page)

	cloudapp list -p 2 -n 10   # list second page of drops with 10 drops per page

	cloudapp list -a   # list all your drops (first 100 ^^)

	cloudapp upload drumandbass.ogg   # upload a file

	cloudapp upload --private topsecret.pdf   # upload a file as private

	cloudapp bookmark heise http://heise.de/   # creates an alias

	cloudapp bookmark http://google.com/   # the url will be the alias' name

	cloudapp download dZ69   # download a drop to current directory

	cloudapp view dZ69   # view details of a drop (more details with -v)

	cloudapp change username thenewname   # changes e-mail and updates the local credentials, too

	cloudapp change password thenewpwd   # changes password and updates the local credentials, too

	cloudapp change privacy private   # change default security of _new_ drops to private (public is the other option)

	cloudapp private dZ69   # change a drop to private

	cloudapp rename dZ69 UserGuide.txt   # rename a drop

	cloudapp delete dZ69   # delete a drop

	cloudapp recover dZ69   # recover a drop

	cloudapp search Screenshot   # list all items with "Screenshot" in name or redirect url (for bookmarks)

	cloudapp search "^.*rb$"   # since the term is effectively a regex you could do many magic for filtering

	cloudapp gc-view GIFT1234   # view gift card details

	cloudapp gc-redeem GIFT1234   # redeem a gift card

Note: If you want to specify arguments (e.g. item IDs or file names) with a leading dash, the Option Parser will claim about an unknown option - than you should insert an double-dash followed by a space in front of the argument with the leading dash.

## Credits

To [posativ](https://github.com/posativ) for testing and bug reporting!
