#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

double main()
{
	long int i;
        double *time, *eRMSD;

        FILE *in, *out;

        in = fopen ("COLVAR_eRMSD_0-5053ns.dat","r");
	out = fopen ("eRMSD_3.00_upto-5053ns.dat","w");
	
        time = (double*) malloc (5061844 * sizeof(double));
        eRMSD = (double*) malloc (5061844 * sizeof(double));


	for (i = 0; i < 5061844; i++){	
		fscanf(in,"%lf\t%lf\n",&*(time+i),&*(eRMSD+i));
		if ((*(eRMSD+i))>2.99 && (*(eRMSD+i))<3.01)
                {
                        fprintf(out,"%ld\n",i);
                }
	}

free(time);
free(eRMSD);
fclose(in);
fclose(out);
}
