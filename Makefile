all: GPSTravelLog.html gps.txt

GPSTravelLog.html: ../../ts/bazel-out/k8-fastbuild/bin/apps/TravelLog/GPSTravelLog.out.html
	cp $< $@

gps.txt: ../../../docs/personal/gps.txt
	cp $< $@

install: all
	git commit -m. -a
	git push
