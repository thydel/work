top:; @date

make = make -C ext/$@ --no-print-directory $1

normal := data-ips ips nodes-groups data-users
special := inventories
repos := $(normal) $(special)
$(normal):; $(call make, install)
$(special):; $(call make, main); $(call make, install)
main: $(repos)
.PHONY: main $(repos)
