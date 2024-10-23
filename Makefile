PYTHON := python
SETUP := model_setup.py
TEST := train_test_chess.py
FILTER := lichess_data_filtering.ipynb


B1 := skypilot-workdir-oscar-f41b825a

setup: $(SETUP)
	$(PYTHON) $(SETUP)

test: $(TEST)
	$(PYTHON) $(TEST) \
		--mode test \
		--probe skill

filter: $(FILTER)
	$(PYTHON) $(FILTER)

sups3
	aws s3 rm s3://$(B1) --recursive
	aws s3 rb s3://$(B1)
