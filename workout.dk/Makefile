M4=m4
M4FLAGS=-I ../

.PHONY: railscode clean all prepare fig

all: prepare fig

prepare: volume-create.sh fig.yml

web/app.tar.gz:
	mkdir /tmp/workout.dk
	cd /tmp/workout.dk && git clone --depth 1 repos:workout.dk && cd workout.dk && git archive -o /tmp/workout.tar.gz master
	cp /tmp/workout.tar.gz web/app.tar.gz
	rm -fr /tmp/workout.dk

volume-create.sh: ../config.m4 m4/volume-create.sh.m4
	$(M4) $(M4FLAGS) m4/volume-create.sh.m4 >volume-create.sh

fig: fig.yml web/app.tar.gz
	sudo fig build

fig.yml: ../config.m4 m4/fig.yml.m4
	$(M4) $(M4FLAGS) m4/fig.yml.m4 >fig.yml

clean:
	-rm m4/config.m4 fig.yml volume-create.sh web/app.tar.gz
