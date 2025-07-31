#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>


double main()
{
	long int i,j;
        double *time, *eRMSD, *cn, *distance, *sigma1, *sigma2, *sigma3, *height, *biasfactor;

        FILE *in, *out;

        in = fopen ("frame_upto_1018ns.dat","r");
        out = fopen ("out_undock_2_distance_0.3855-0.4538_eRMSD_2.280-2.546_upto_1018ns.ndx","w");
	
        time = (double*) malloc (1063901 * sizeof(double));
        eRMSD = (double*) malloc (1063901 * sizeof(double));
	cn = (double*) malloc (1063901 * sizeof(double));
        distance = (double*) malloc (1063901 * sizeof(double));
        sigma1 = (double*) malloc (1063901 * sizeof(double));
        sigma2 = (double*) malloc (1063901 * sizeof(double));
	sigma3 = (double*) malloc (1063901 * sizeof(double));
	height = (double*) malloc (1063901 * sizeof(double));
	biasfactor = (double*) malloc (1063901 * sizeof(double));


	for (i = 1; i < 1063901; i++){
		fscanf(in,"%ld\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\n",&i,&*(time+i),&*(eRMSD+i),&*(cn+i),&*(distance+i),&*(sigma1+i),&*(sigma2+i),&*(sigma3+i),&*(height+i),&*(biasfactor+i));
		if (2.280<(*(eRMSD+i)) && (*(eRMSD+i))<2.546 && 0.3855<(*(distance+i)) && (*(distance+i))<0.4538)
		{
			fprintf(out,"%ld\n",i);
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



/*
int main()
{
        long int i,j;
        double *time, *eRMSD, *cn, *distance, *sigma1, *sigma2, *sigma3, *height, *biasfactor;

        FILE *in, *out;

        in = fopen ("frame_upto_1018ns.dat","r");
        out = fopen ("out_undock_CN_4.347-6.00_eRMSD_3.171-3.569_upto_1018ns.dat","w");

        time = (double*) malloc (1063901 * sizeof(double));
        eRMSD = (double*) malloc (1063901 * sizeof(double));
        cn = (double*) malloc (1063901 * sizeof(double));
        distance = (double*) malloc (1063901 * sizeof(double));
        sigma1 = (double*) malloc (1063901 * sizeof(double));
        sigma2 = (double*) malloc (1063901 * sizeof(double));
        sigma3 = (double*) malloc (1063901 * sizeof(double));
        height = (double*) malloc (1063901 * sizeof(double));
        biasfactor = (double*) malloc (1063901 * sizeof(double));


        for (i = 1; i < 1063901; i++){
                fscanf(in,"%ld\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\n",&i,&*(time+i),&*(eRMSD+i),&*(cn+i),&*(distance+i),&*(sigma1+i),&*(sigma2+i),&*(sigma3+i),&*(height+i),&*(biasfactor+i));
                if (3.171<(*(eRMSD+i)) && (*(eRMSD+i))<3.569 && 4.347<(*(cn+i)) && (*(cn+i))<6.00)
                {
                        fprintf(out,"%ld\n",i);
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

*/
/*

double main()
{
        long int i,j;
        double *time, *eRMSD, *cn, *distance, *sigma1, *sigma2, *sigma3, *height, *biasfactor;

        FILE *in, *out;

        in = fopen ("frame_upto_1018ns.dat","r");
        out = fopen ("out_undock_distance_0.3855-0.4600_CN_3.315-4.007_upto_1018ns.dat","w");

        time = (double*) malloc (1063901 * sizeof(double));
        eRMSD = (double*) malloc (1063901 * sizeof(double));
        cn = (double*) malloc (1063901 * sizeof(double));
        distance = (double*) malloc (1063901 * sizeof(double));
        sigma1 = (double*) malloc (1063901 * sizeof(double));
        sigma2 = (double*) malloc (1063901 * sizeof(double));
        sigma3 = (double*) malloc (1063901 * sizeof(double));
        height = (double*) malloc (1063901 * sizeof(double));
        biasfactor = (double*) malloc (1063901 * sizeof(double));


        for (i = 1; i < 1063901; i++){
                fscanf(in,"%ld\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\n",&i,&*(time+i),&*(eRMSD+i),&*(cn+i),&*(distance+i),&*(sigma1+i),&*(sigma2+i),&*(sigma3+i),&*(height+i),&*(biasfactor+i));
                if (3.315<(*(cn+i)) && (*(cn+i))<4.007 && 0.3855<(*(distance+i)) && (*(distance+i))<0.4600)
                {
                        fprintf(out,"%ld\n",i);
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

*/
