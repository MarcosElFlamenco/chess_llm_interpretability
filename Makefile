PYTHON := python3
SETUP := model_setup.py
SETUPs3:= model_setup_s3.py
TEST := train_test_chess.py
FILTER := lichess_data_filtering.ipynb


B1 := skypilot-workdir-oscar-f41b825a

setup: $(SETUP)
	$(PYTHON) $(SETUP)

test: $(TEST)
	$(PYTHON) $(TEST) \
		--mode test \
		--probe skill

train_probe:
	$(PYTHON) $(TEST)

remote_train_probe:
	sky jobs launch -c boardCluster remote/train_probes.yaml

filter: $(FILTER)
	$(PYTHON) $(FILTER)

sups3:
	aws s3 rm s3://$(B1) --recursive
	aws s3 rb s3://$(B1)
