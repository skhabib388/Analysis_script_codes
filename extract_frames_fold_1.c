#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
// #! FIELDS time eRMSD1 r d1 cn cn1 metad.bias 
double main()
{
	long int i,j;
        double *time, *eRMSD, *RMSD, *cn1, *distance, *cn, *v;

        FILE *in, *out1, *out2, *out4, *out3, *out5;

        in = fopen ("COLVAR_REWEIGHT_cn_2.7ang_RMSD_upto-6195ns","r");
	out1 = fopen ("fr_UA_CNx_0.06-0.14_RMSD_0.67-0.73.dat","w");
	out2 = fopen ("fr_UB_CNx_0.93-1.06_RMSD_0.64-0.75.dat","w");
	out3 = fopen ("fr_UC_CNx_1.77-1.84_RMSD_0.69-0.77.dat","w");
	out4 = fopen ("fr_UD_CNx_2.66-2.92_RMSD_0.68-0.76.dat","w");
//	out5 = fopen ("fr_UE_CNx_3.55-3.76_RMSD_0.42-0.46.dat","w");
	
        time = (double*) malloc (6174279 * sizeof(double));
        eRMSD = (double*) malloc (6174279 * sizeof(double));
	RMSD = (double*) malloc (6174279 * sizeof(double));
	cn = (double*) malloc (6174279 * sizeof(double));
        distance = (double*) malloc (6174279 * sizeof(double));
        cn1 = (double*) malloc (6174279 * sizeof(double));
	v = (double*) malloc (6174279 * sizeof(double));
	
	for (i = 0; i < 6174279; i++){
		fscanf(in,"%lf%lf%lf%lf%lf%lf%lf\n",&*(time+i),&*(eRMSD+i),&*(RMSD+i),&*(distance+i),&*(cn+i),&*(cn1+i),&*(v+i));
//		printf("%lf %lf %lf %lf %lf %lf %lf\n",*(time+i),*(eRMSD+i),*(RMSD+i),*(distance+i),*(cn+i),*(cn1+i),*(v+i));
	//	if (0.13<(*(RMSD+i)) && (*(RMSD+i))<0.15)
	//	{
//			fprintf(out,"%ld %lf %lf %lf %lf %lf %lf\n",i,*(eRMSD+i),*(RMSD+i),*(distance+i),*(cn+i),*(cn1+i),*(v+i));
	//		fprintf(out,"%ld\n",i);
	//	}
		if (0.06<(*(cn1+i)) && (*(cn1+i))<0.14 && 0.67<(*(RMSD+i)) && (*(RMSD+i))<0.73)
                {
                        fprintf(out1,"%lf\t%lf\n",*(eRMSD+i),*(v+i));
		}
		if (0.93<(*(cn1+i)) && (*(cn1+i))<1.06 && 0.64<(*(RMSD+i)) && (*(RMSD+i))<0.75)
                {
                        fprintf(out2,"%lf\t%lf\n",*(eRMSD+i),*(v+i));
                }
		if (1.77<(*(cn1+i)) && (*(cn1+i))<1.84 && 0.69<(*(RMSD+i)) && (*(RMSD+i))<0.77)
                {
                        fprintf(out3,"%lf\t%lf\n",*(eRMSD+i),*(v+i));
                }
		if (2.66<(*(cn1+i)) && (*(cn1+i))<2.92 && 0.68<(*(RMSD+i)) && (*(RMSD+i))<0.76)
                {
                        fprintf(out4,"%lf\t%lf\n",*(eRMSD+i),*(v+i));
                }
/*		if (3.55<(*(cn1+i)) && (*(cn1+i))<3.76 && 0.42<(*(RMSD+i)) && (*(RMSD+i))<0.46)
                {
                        fprintf(out5,"%lf\t%lf\n",*(eRMSD+i),*(v+i));
                }*/

	}

free(time);
free(RMSD);
free(eRMSD);
free(cn);
free(distance);
free(cn1);
fclose(in);
fclose(out1);
fclose(out2);
fclose(out3);
fclose(out4);
free(v);
}
