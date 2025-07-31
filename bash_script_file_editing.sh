#!/bin/bash



filename1="extract_frames_fold.c"
filename2="plumed_CN-OP-Mg.dat"
filename3="plumed_dis_ON-Mg.dat"

####################### eRMSD = 3.2 ######################



##### for basin 0 #####

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_0_CN_0.09-0.20_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_0_CN_0.09-0.20_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_0_CN_0.09-0.20_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_0_CN_0.09-0.20.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_0_CN_0.09-0.20.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_0_CN_0.09-0.20.xtc --plumed plumed_dis_ON-Mg.dat

#### for basin 1 ####


sed -i "s/0.09/1.00/g" $filename1
sed -i "s/0.20/1.12/g" $filename1
sed -i "s/0_CN_0.09-0.20/1_CN_1.00-1.12/g" $filename2
sed -i "s/0_CN_0.09-0.20/1_CN_1.00-1.12/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_1_CN_1.00-1.12_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_1_CN_1.00-1.12_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_1_CN_1.00-1.12_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_1_CN_1.00-1.12.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_1_CN_1.00-1.12.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_1_CN_1.00-1.12.xtc --plumed plumed_dis_ON-Mg.dat



#### for basin 2 ####


sed -i "s/1.00/1.75/g" $filename1
sed -i "s/1.12/1.88/g" $filename1
sed -i "s/1_CN_1.00-1.12/2_CN_1.75-1.88/g" $filename2
sed -i "s/1_CN_1.00-1.12/2_CN_1.75-1.88/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_2_CN_1.75-1.88_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_2_CN_1.75-1.88_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_2_CN_1.75-1.88_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.75-1.88.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.75-1.88.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.75-1.88.xtc --plumed plumed_dis_ON-Mg.dat

#### for basin 3 ####


sed -i "s/1.75/2.73/g" $filename1
sed -i "s/1.88/2.90/g" $filename1
sed -i "s/2_CN_1.75-1.88/3_CN_2.73-2.90/g" $filename2
sed -i "s/2_CN_1.75-1.88/3_CN_2.73-2.90/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_3_CN_2.73-2.90_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_3_CN_2.73-2.90_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_3_CN_2.73-2.90_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_3_CN_2.73-2.90.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_3_CN_2.73-2.90.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_3_CN_2.73-2.90.xtc --plumed plumed_dis_ON-Mg.dat


#### for basin 4 ####

sed -i "s/2.73/3.56/g" $filename1
sed -i "s/2.90/3.71/g" $filename1
sed -i "s/3_CN_2.73-2.90/4_CN_3.56-3.71/g" $filename2
sed -i "s/3_CN_2.73-2.90/4_CN_3.56-3.71/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_4_CN_3.56-3.71_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_4_CN_3.56-3.71_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_4_CN_3.56-3.71_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_4_CN_3.56-3.71.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_4_CN_3.56-3.71.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_4_CN_3.56-3.71.xtc --plumed plumed_dis_ON-Mg.dat

'
#### for basin 5 ####

sed -i "s//4.01/g" $filename1
sed -i "s/3.10/4.20/g" $filename1
sed -i "s/4_CN_2.98-3.10/5_CN_4.01-4.20/g" $filename2
sed -i "s/4_CN_2.98-3.10/5_CN_4.01-4.20/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_5_CN_4.01-4.20_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_5_CN_4.01-4.20_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_5_CN_4.01-4.20_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_5_CN_4.01-4.20.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_5_CN_4.01-4.20.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_5_CN_4.01-4.20.xtc --plumed plumed_dis_ON-Mg.dat


#### for basin 6 ####

sed -i "s/3.57/4.13/g" $filename1
sed -i "s/3.76/4.36/g" $filename1
sed -i "s/5_CN_3.57-3.76/6_CN_4.13-4.36/g" $filename2
sed -i "s/5_CN_3.57-3.76/6_CN_4.13-4.36/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_6_CN_4.13-4.36_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_6_CN_4.13-4.36_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_6_CN_4.13-4.36_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_6_CN_4.13-4.36.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_6_CN_4.13-4.36.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_6_CN_4.13-4.36.xtc --plumed plumed_dis_ON-Mg.dat


####################### eRMSD = 1.4 ######################

#### for basin 0 ####

sed -i "s/0.79/1.39/g" $filename1
sed -i "s/0.81/1.41/g" $filename1
sed -i "s/2.81/0.22/g" $filename1
sed -i "s/2.90/0.39/g" $filename1
sed -i "s/eRMSD_3.2/eRMSD_1.4/g" $filename2
sed -i "s/eRMSD_3.2/eRMSD_1.4/g" $filename3
sed -i "s/4_CN_2.81-2.90/0_CN_0.22-0.39/g" $filename2
sed -i "s/4_CN_2.81-2.90/0_CN_0.22-0.39/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_1.4_basin_0_CN_0.22-0.39_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_1.4_basin_0_CN_0.22-0.39_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_1.4_basin_0_CN_0.22-0.39_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_0_CN_0.22-0.39.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_0_CN_0.22-0.39.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_0_CN_0.22-0.39.xtc --plumed plumed_dis_ON-Mg.dat

#### for basin 1 ####

sed -i "s/0.22/0.97/g" $filename1
sed -i "s/0.39/1.09/g" $filename1
sed -i "s/0_CN_0.22-0.39/1_CN_0.97-1.09/g" $filename2
sed -i "s/0_CN_0.22-0.39/1_CN_0.97-1.09/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_1.4_basin_1_CN_0.97-1.09_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_1.4_basin_1_CN_0.97-1.09_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_1.4_basin_1_CN_0.97-1.09_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_1_CN_0.97-1.09.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_1_CN_0.97-1.09.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_1_CN_0.97-1.09.xtc --plumed plumed_dis_ON-Mg.dat


#### for basin 2 ####

sed -i "s/0.97/1.63/g" $filename1
sed -i "s/1.09/1.76/g" $filename1
sed -i "s/1_CN_0.97-1.09/2_CN_1.63-1.76/g" $filename2
sed -i "s/1_CN_0.97-1.09/2_CN_1.63-1.76/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_3.2_basin_2_CN_1.63-1.76_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_3.2_basin_2_CN_1.63-1.76_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_3.2_basin_2_CN_1.63-1.76_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.63-1.76.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.63-1.76.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_3.2_basin_2_CN_1.63-1.76.xtc --plumed plumed_dis_ON-Mg.dat

#### for basin 3 ####

sed -i "s/1.60.8.24/g" $filename1
sed -i "s/1.76/2.38/g" $filename1
sed -i "s/2_CN_1.63-1.76/3_CN_2.24-2.38/g" $filename2
sed -i "s/2_CN_1.63-1.76/3_CN_2.24-2.38/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_1.4_basin_3_CN_2.24-2.38_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_1.4_basin_3_CN_2.24-2.38_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_1.4_basin_3_CN_2.24-2.38_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_3_CN_2.24-2.38.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_3_CN_2.24-2.38.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_3_CN_2.24-2.38.xtc --plumed plumed_dis_ON-Mg.dat



#### for basin 4 ####

sed -i "s/2.24/2.91/g" $filename1
sed -i "s/2.38/3.05/g" $filename1
sed -i "s/3_CN_2.24-2.38/4_CN_2.91-3.05/g" $filename2
sed -i "s/3_CN_2.24-2.38/4_CN_2.91-3.05/g" $filename3

gcc extract_frames_fold.c -o extract_frames_fold.exe -lm

./extract_frames_fold.exe > eRMSD_1.4_basin_4_CN_2.91-3.05_upto-6195ns.ndx

sed -i '1 i\[frames]' eRMSD_1.4_basin_4_CN_2.91-3.05_upto-6195ns.ndx

echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_1094-1294ns.tpr -n index.ndx -fr eRMSD_1.4_basin_4_CN_2.91-3.05_upto-6195ns.ndx -o md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_4_CN_2.91-3.05.xtc -pbc res -center

plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_4_CN_2.91-3.05.xtc --plumed plumed_CN-OP-Mg.dat
plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res_eRMSD_1.4_basin_4_CN_2.91-3.05.xtc --plumed plumed_dis_ON-Mg.dat
'
