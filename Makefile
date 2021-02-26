# Paths
PWD := $(shell pwd)
BUILD_PATH := $(PWD)/build

# Tools
AWK := awk
CD := cd
CP := cp -f
CURL := curl -sL
COLUMN := column
GIT := git
MKDIR := mkdir -p
RM := rm -f
RMDIR := rm -rf
SED := sed
SHA256 := sha256sum
TAR := tar

# Default targets
_DEFAULT_GOAL: help

# Directories creation
$(BUILD_PATH):
	$(MKDIR) $@

# Release
.PHONY: check_version prepare_release publish_release

GIT_REMOTE = origin
SAC_GIT_URL = https://github.com/sacproj/sac-cli
SAC_FORMULA = Formula/sac.rb
SAC_TARBALL = sac-cli.tar.gz
SAC_TARBALL_URL = $(SAC_GIT_URL)/releases/download/$(VERSION)/$(SAC_TARBALL)
SAC_TARBALL_SHA256 := $(shell $(CURL) $(SAC_TARBALL_URL) | $(SHA256) - | head -c 64)
BUILD_SAC_FORMULA := $(BUILD_PATH)/$(shell basename $(SAC_FORMULA))

check_version:
	@if [ "$(VERSION)" == "" ]; then echo "VERSION must be defined"; exit 1; fi

## Prepare release (requires defined VERSION)
prepare_release: $(BUILD_PATH) check_version
	$(CP) $(SAC_FORMULA) $(BUILD_SAC_FORMULA)
	$(SED) \
	  -e "s|url \".*|url \"$(SAC_TARBALL_URL)\"|" \
	  -e "s|version \".*|version \"$(VERSION)\"|" \
	  -e "s|sha256 \".*|sha256 \"$(SAC_TARBALL_SHA256)\"|" \
	  $(BUILD_SAC_FORMULA) > $(SAC_FORMULA)
	$(GIT) add $(SAC_FORMULA)
	$(GIT) commit --allow-empty -s -m "release: $(VERSION)"
	$(GIT) tag -a $(VERSION) -s -m $(VERSION)

## Publish release (requires defined VERSION)
publish_release: check_version
	$(GIT) push
	$(GIT) push $(GIT_REMOTE) $(VERSION)

# Cleaning
.PHONY: clean clean-build
## Clean artifacts
clean: clean-build

clean-build:
	$(RMDIR) $(BUILD_PATH)

.PHONY: help
## Display this help message
help:
	$(info Available targets)
	@$(AWK) '/^[a-zA-Z\-\\_0-9]+:/ {                                   \
	  nb = sub( /^## /, "", helpMsg );                             \
	  if(nb == 0) {                                                \
	    helpMsg = $$0;                                             \
	    nb = sub( /^[^:]*:.* ## /, "", helpMsg );                  \
	  }                                                            \
	  if (nb)                                                      \
	    printf "\033[1;31m%-" width "s\033[0m %s\n", $$1, helpMsg; \
	}                                                              \
	{ helpMsg = $$0 }'                                             \
	$(MAKEFILE_LIST) | $(COLUMN) -ts:
