#!/bin/bash

use_solution Bonsai_solve.py

compile gen_BIG.py
compile gen_speedy.py
compile gen_tall.py

samplegroup
limits n=10
sample 1
sample 2
sample 3

group group1 14
limits n=100001 restr=2
tc 1
tc simple-small1 gen_BIG n=10 mode=line
tc simple-small2 gen_BIG n=11 mode=line
tc simple-med1 gen_BIG n=9999 mode=line
tc simple-med2 gen_BIG n=1000 mode=line
tc simple-med3 gen_BIG n=1001 mode=line
tc simple-med4 gen_BIG n=1002 mode=line
tc simple-BIG1 gen_BIG n=99999 mode=line
tc simple-BIG2 gen_BIG n=100000 mode=line

group group2 26
limit n = 100
tc 3
tc small-random1 gen_BIG n=50 mode=random
tc small-random2 gen_BIG n=51 mode=random
tc small-random3 gen_BIG n=99 mode=random
tc small-random4 gen_BIG n=99 mode=random
tc small-random5 gen_BIG n=100 mode=random
tc small-random6 gen_BIG n=100 mode=random
tc small-star1 gen_BIG n=51 mode=star
tc small-star2 gen_BIG n=100 mode=star
tc small-deep1 gen_BIG n=50 mode=deep
tc small-deep2 gen_BIG n=99 mode=deep
tc small-deep3 gen_BIG n=100 mode=deep
tc small-deep4 gen_BIG n=100 mode=deep
tc small-deeper1 gen_BIG n=50 mode=deeper
tc small-deeper2 gen_BIG n=51 mode=deeper
tc small-deeper3 gen_BIG n=99 mode=deeper
tc small-deeper4 gen_BIG n=99 mode=deeper
tc small-deeper5 gen_BIG n=100 mode=deeper
tc small-deeper6 gen_BIG n=100 mode=deeper

group group3 30
limit n=100000 restr=3
include_group group1
tc 2
tc tall1 gen_tall n=11
tc tall2 gen_tall n=12
tc tall3 gen_tall n=1001
tc tall4 gen_tall n=1000
tc tall5 gen_tall n=10001
tc tall6 gen_tall n=10000
tc tall7 gen_tall n=100000
tc tall8 gen_tall n=100000
tc tall9 gen_tall n=100000
tc tall10 gen_tall n=45678
tc tall11 gen_tall n=34567
tc tall12 gen_tall n=98766

group group4 15
limit n=100000 restr=15
tc 1
tc 2
tc 3
tc speedy1 gen_speedy n=11
tc speedy2 gen_speedy n=12
tc speedy3 gen_speedy n=1001
tc speedy4 gen_speedy n=1000
tc speedy5 gen_speedy n=10001
tc speedy6 gen_speedy n=10000
tc speedy7 gen_speedy n=100000
tc speedy8 gen_speedy n=100000
tc speedy9 gen_speedy n=100000
tc speedy10 gen_speedy n=45678
tc speedy11 gen_speedy n=34567
tc speedy12 gen_speedy n=98766

group group5 15
limit n=100000
include_group group2
include_group group3
include_group group4

tc BIG-random1 gen_BIG n=50000 mode=random
tc BIG-random2 gen_BIG n=51000 mode=random
tc BIG-random3 gen_BIG n=99000 mode=random
tc BIG-random4 gen_BIG n=99000 mode=random
tc BIG-random5 gen_BIG n=100000 mode=random
tc BIG-random6 gen_BIG n=100000 mode=random
tc BIG-star1 gen_BIG n=51000 mode=star
tc BIG-star2 gen_BIG n=100000 mode=star
tc BIG-deep1 gen_BIG n=50000 mode=deep
tc BIG-deep2 gen_BIG n=99000 mode=deep
tc BIG-deep3 gen_BIG n=100000 mode=deep
tc BIG-deep4 gen_BIG n=100000 mode=deep
tc BIG-deeper1 gen_BIG n=50000 mode=deeper
tc BIG-deeper2 gen_BIG n=51000 mode=deeper
tc BIG-deeper3 gen_BIG n=99000 mode=deeper
tc BIG-deeper4 gen_BIG n=99000 mode=deeper
tc BIG-deeper5 gen_BIG n=100000 mode=deeper
tc BIG-deeper6 gen_BIG n=100000 mode=deeper