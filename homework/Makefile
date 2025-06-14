.PHONY: trails
trails:
	mkdir -p trails || true
	for i in s1 s2 s3 s4 s5 s6 l1 l2 l3 l4 l5 l6 f1 f2 f3 f4 f5 f6; do spin -search -m1000000 -ltl $$i system.pml > "trails/$$i.log"; done
