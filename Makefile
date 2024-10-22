PYTHON := python
SETUP := model_setup.py
TEST := train_test_chess.py
FILTER := lichess_data_filtering.ipynb


B1 := skypilot-workdir-oscar-f41b825a
B2 :=skypilot-workdir-oscar-f2a9b283 
B3 :=skypilot-workdir-oscar-e3f78581 
B4 := skypilot-workdir-oscar-ced6dee0
B5 := skypilot-workdir-oscar-ac9099d6
B6 :=skypilot-workdir-oscar-a3cebf08 
B7 :=skypilot-workdir-oscar-9ef8af5e 
B8 :=skypilot-workdir-oscar-8aedad4d 

B9 :=skypilot-workdir-oscar-829847f1
Ba := skypilot-workdir-oscar-7ad0698e 
Bb :=skypilot-workdir-oscar-64d4d271 
Bc :=skypilot-workdir-oscar-59959f2f 
Bd :=skypilot-workdir-oscar-0dcdcfd5 
Be :=skypilot-workdir-oscar-09ad693e 




run: $(SETUP)
	$(PYTHON) $(SETUP)

test: $(TEST)
	$(PYTHON) $(TEST) \
		--mode test \
		--probe skill

filter: $(FILTER)
	$(PYTHON) $(FILTER)

bidon:
	aws s3 rm s3://$(B1) --recursive
	aws s3 rb s3://$(B1)
	aws s3 rm s3://$(B2) --recursive
	aws s3 rb s3://$(B2)
	aws s3 rm s3://$(B3) --recursive
	aws s3 rb s3://$(B3)
	aws s3 rm s3://$(B4) --recursive
	aws s3 rb s3://$(B4)
	aws s3 rm s3://$(B5) --recursive
	aws s3 rb s3://$(B5)
	aws s3 rm s3://$(B6) --recursive
	aws s3 rb s3://$(B6)
	aws s3 rm s3://$(B7) --recursive
	aws s3 rb s3://$(B7)
	aws s3 rm s3://$(B8) --recursive
	aws s3 rb s3://$(B8)
	aws s3 rm s3://$(B9) --recursive
	aws s3 rb s3://$(B9)
	aws s3 rm s3://$(Ba) --recursive
	aws s3 rb s3://$(Ba)
	aws s3 rm s3://$(Bb) --recursive
	aws s3 rb s3://$(Bb)
	aws s3 rm s3://$(Bc) --recursive
	aws s3 rb s3://$(Bc)
	aws s3 rm s3://$(Bd) --recursive
	aws s3 rb s3://$(Bd)
	aws s3 rm s3://$(Be) --recursive
	aws s3 rb s3://$(Be)
