PY ?= python
PKG = src
RESULTS = results
RAW = $(RESULTS)/raw
FIG = $(RESULTS)/figures

SEED ?= 2025
N_REPS ?= 5000
M ?= 1000
N ?= 150
ALPHA ?= 5
T ?= 0.3

.PHONY: all simulate analyze figures test clean

all: simulate analyze figures

simulate:
	$(PY) -m $(PKG).simulation simulate \
		--alpha $(ALPHA) --n $(N) --m $(M) --reps $(N_REPS) \
		--t $(T) --seed $(SEED) \
		--out $(RAW)

analyze:
	$(PY) -m $(PKG).simulation analyze --raw $(RAW) --out $(RESULTS)

figures:
	$(PY) -m $(PKG).simulation figures --raw $(RAW) --out $(FIG)

test:
	pytest -q

clean:
	rm -rf $(RAW)/* $(FIG)/* $(RESULTS)/summary_*.csv

