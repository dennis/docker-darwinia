VOLUMES_ROOT=/home/dennis/git/docker-darwinia/workout.dk/volumes

M4=m4
M4FLAGS=-I m4

.PHONY: railscode clean all

all: config volume-create.sh fig.yml

railscode:
	cd ~/git/workout.dk; git archive -o /tmp/app.tar.gz master; cd -; cp /tmp/app.tar.gz workout.dk ; rm /tmp/app.tar.gz

config: m4/config.m4

m4/config.m4:
	echo "define(\`VOLUMES', \`$(VOLUMES_ROOT)')" >m4/config.m4

volume-create.sh: m4/config.m4 m4/volume-create.sh.m4
	$(M4) $(M4FLAGS) m4/volume-create.sh.m4 >volume-create.sh

fig.yml: m4/config.m4 m4/fig.yml.m4
	$(M4) $(M4FLAGS) m4/fig.yml.m4 >fig.yml

clean:
	-rm m4/config.m4 fig.yml volume-create.sh
