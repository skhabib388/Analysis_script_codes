#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
double main()
{
        long int i,j;
        long int n_resid = 260, n_snapshot = 93174;
        double *res,*n_Mg,Vc,N_A = (6.023*pow(10,23));
        res = (double*) malloc (260 * sizeof(double));
        n_Mg = (double*) malloc (260 * sizeof(double));
        FILE *out,*in;
        in = fopen("local_no_of_NA_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.dat","r");
        out = fopen("local_NA_concentration_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.dat","w");
        for(j = 104; j <= n_resid; j++){
                *(res+j) = 0.0;
        }
        for (i = 0; i < n_snapshot; i++){
                for (j = 104; j <= n_resid; j++){
                        fscanf(in,"%ld\t%ld\t%lf\n",&i,&j,&*(n_Mg+j));
                        *(res+j) = *(res+j) + *(n_Mg+j);
                //      printf("%ld\t%ld\t%lf\n",i,j,*(res+j));
                }
        }
        Vc = (4.0/3.0) * 3.14 * pow((5.0*pow(10,(-9))),3);
        for(j = 104; j <= n_resid; j++){
                *(res+j) = *(res+j)/(n_snapshot * Vc * N_A);
                fprintf(out,"%ld\t%lf\n",j,*(res+j));
        }
free(res);
fclose(in);
fclose(out);
}
