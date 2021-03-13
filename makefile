PROFILES := $(wildcard profiles/*.profile)
build: $(PROFILES)

FILE := Dockerfile-Update

# Build the docker image locally
profiles/%.profile:
	$(eval PROF_TAG:=$(subst profiles/, ,$@))
	$(eval PROF:=$(subst .profile, ,$(PROF_TAG)))
	docker build --no-cache -t $(PROF) -f ${FILE} --build-arg target_profile=$(PROF) .
