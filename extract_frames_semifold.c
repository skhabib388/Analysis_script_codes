#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

double main()
{
        long int i,j;
        double *time, *eRMSD, *cn, *distance, *sigma1, *sigma2, *sigma3, *height, *biasfactor;

        FILE *in, *out;

        in = fopen ("frames_upto-1760ns.dat","r");
        out = fopen ("out_dock_distance_0.1955-0.1980_eRMSD_3.503-3.528_CN_5.41-5.60_upto_1760ns.dat","w");

        time = (double*) malloc (1760500 * sizeof(double));
        eRMSD = (double*) malloc (1760500 * sizeof(double));
        cn = (double*) malloc (1760500 * sizeof(double));
        distance = (double*) malloc (1760500 * sizeof(double));
        sigma1 = (double*) malloc (1760500 * sizeof(double));
        sigma2 = (double*) malloc (1760500 * sizeof(double));
        sigma3 = (double*) malloc (1760500 * sizeof(double));
        height = (double*) malloc (1760500 * sizeof(double));
        biasfactor = (double*) malloc (1760500 * sizeof(double));


        for (i = 1; i < 1760500; i++){
                fscanf(in,"%ld\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\n",&i,&*(time+i),&*(eRMSD+i),&*(cn+i),&*(distance+i),&*(sigma1+i),&*(sigma2+i),&*(sigma3+i),&*(height+i),&*(biasfactor+i));
                if (3.503<(*(eRMSD+i)) && (*(eRMSD+i))<3.528 && 0.1955<(*(distance+i)) && (*(distance+i))<0.1980 && 5.41<(*(cn+i)) && (*(cn+i))<5.60)
                {
                        fprintf(out,"%ld\n",i+1);
                }
        }

free(height);
free(biasfactor);
free(time);
free(eRMSD);
free(cn);
free(distance);
free(sigma1);
free(sigma2);
fclose(in);
fclose(out);
}


