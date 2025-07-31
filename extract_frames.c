#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

double main()
{
	long int i,j;
        double *time, *eRMSD, *RMSD, *cn1, *distance, *cn, *metbias;

        FILE *in, *out, *out1;
        in = fopen ("COLVAR_CVs_RMSD_0.44_upto-6195ns.dat","r");
	out = fopen ("RMSD_0.44_basin_D_upto-6195ns.ndx","w");
	out1 = fopen ("RMSD_0.44_basin_E_upto-6195ns.ndx","w");
	
        time = (double*) malloc (136489 * sizeof(double));
        eRMSD = (double*) malloc (136489 * sizeof(double));
	RMSD = (double*) malloc (136489 * sizeof(double));
	cn = (double*) malloc (136489 * sizeof(double));
        distance = (double*) malloc (136489 * sizeof(double));
        cn1 = (double*) malloc (136489 * sizeof(double));
	metbias = (double*) malloc (136489 * sizeof(double));
	
	for (i = 1; i < 136489; i++){
		fscanf(in,"%lf%lf%lf%lf%lf%lf%lf\n",&*(time+i),&*(eRMSD+i),&*(RMSD+i),&*(distance+i),&*(cn+i),&*(cn1+i),&*(metbias+i));
		if (2.70<(*(cn1+i)) && (*(cn1+i))<3.00)
//		if ((*(RMSD+i))<0.15)
		{
			fprintf(out,"%ld\n",i);
		}

		if (3.51<(*(cn1+i)) && (*(cn1+i))<3.81)
                {
                        fprintf(out1,"%ld\n",i);
                }

	}



free(time);
free(RMSD);
free(eRMSD);
free(cn);
free(distance);
free(cn1);
fclose(in);
fclose(out);
fclose(out1);
}
