CC=gcc

CFLAGS=-march=native -g3 -mavx2 -funroll-loops

OFLAGS=-Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt


all: nbody3D nbody3D_opt

nbody3D: nbody.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@ -lm
nbody3D_opt: nbody_opt.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@ -lm

clean:
	rm -Rf *~ nbody3D *.optrpt

