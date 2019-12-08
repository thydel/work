top:; @date

. := ext/files-flow

systemd := indird@.service indirdwake@.service indirdwake@.path
systemd.installed := $(systemd:%=/etc/systemd/%)

/usr/local/bin/indird: $./indird/indird; install $< $@
$(systemd.installed): /etc/systemd/% : $./indird/%; sudo install $< $@

install: /usr/local/bin/indird $(systemd.installed)
