// by Erik Wrenholt
#include <ruby.h>
#include <stdio.h>
#include <sys/time.h>

#define BAILOUT 16
#define MAX_ITERATIONS 1000

VALUE classe;

int mandelbrot(double x, double y)
{
	double cr = y - 0.5;
	double ci = x;
	double zi = 0.0;
	double zr = 0.0;
	int i = 0;

	while(1) {
		i ++;
		double temp = zr * zi;
		double zr2 = zr * zr;
		double zi2 = zi * zi;
		zr = zr2 - zi2 + cr;
		zi = temp + temp + ci;
		if (zi2 + zr2 > BAILOUT)
			return i;
		if (i > MAX_ITERATIONS)
			return 0;
	}
	
}

int render() {
	struct timeval aTv;
	gettimeofday(&aTv, NULL);
	long init_time = aTv.tv_sec;
	long init_usec = aTv.tv_usec;

	int x,y;
	for (y = -39; y < 39; y++) {
		printf("\n");
		for (x = -39; x < 39; x++) {
			int i = mandelbrot(x/40.0, y/40.0);
			if (i==0)
				printf("*");
			else
				printf(" ");
		}	
	}
	printf ("\n");
	
	gettimeofday(&aTv,NULL);
	double query_time = (aTv.tv_sec - init_time) + (double)(aTv.tv_usec - init_usec)/1000000.0;	
	printf ("C Elapsed %0.2f\n", query_time);
    return 0;
}


void Init_mandelbrot() {
  classe = rb_define_class("Mandelbrot", rb_cObject);  
  rb_define_method(classe, "render", render, 0);

}

