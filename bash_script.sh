#!/bin/bash

#plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc --plumed plumed_reweight_eRMSD_0.8.dat
#plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc --plumed plumed_reweight_eRMSD_1.4.dat
#plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc --plumed plumed_reweight_eRMSD_1.85.dat
#plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc --plumed plumed_reweight_eRMSD_2.45.dat
#plumed driver --mf_xtc md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc --plumed plumed_reweight_eRMSD_3.2.dat

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF1A_CNx_0.07-0.22_RMSD_0.29-0.34.ndx -o fr_PF1A_CNx_0.07-0.22_RMSD_0.29-0.34.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF1B_CNx_1.05-1.25_RMSD_0.29-0.34.ndx -o fr_PF1B_CNx_1.05-1.25_RMSD_0.29-0.34.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF1C_CNx_1.84-2.07_RMSD_0.30-0.36.ndx -o fr_PF1C_CNx_1.84-2.07_RMSD_0.30-0.36.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF1D_CNx_2.69-2.98_RMSD_0.29-0.36.ndx -o fr_PF1D_CNx_2.69-2.98_RMSD_0.29-0.36.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF1E_CNx_3.75-3.97_RMSD_0.29-0.35.ndx -o fr_PF1E_CNx_3.75-3.97_RMSD_0.29-0.35.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF2A_CNx_0.07-0.22_RMSD_0.42-0.46.ndx -o fr_PF2A_CNx_0.07-0.22_RMSD_0.42-0.46.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF2B_CNx_0.95-1.15_RMSD_0.42-0.46.ndx -o fr_PF2B_CNx_0.95-1.15_RMSD_0.42-0.46.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF2C_CNx_1.81-2.07_RMSD_0.42-0.46.ndx -o fr_PF2C_CNx_1.81-2.07_RMSD_0.42-0.46.xtc -pbc res -center

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF2D_CNx_2.70-2.98_RMSD_0.42-0.46.ndx -o fr_PF2D_CNx_2.70-2.98_RMSD_0.42-0.46.xtc

echo "1" "11" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s npt_150ns_posres_RNA_free_Ion_water.tpr -fr fr_PF2E_CNx_3.55-3.76_RMSD_0.42-0.46.ndx -o fr_PF2E_CNx_3.55-3.76_RMSD_0.42-0.46.xtc -pbc res -center

#echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_5744-5904ns.tpr -n index.ndx -fr RMSD_0.14_upto-6195ns.ndx -o RMSD_0.14_0-6195ns_RNA_Ion_res.xtc -pbc res -center

#echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_5744-5904ns.tpr -n index.ndx -fr RMSD_0.32_upto-6195ns.ndx -o RMSD_0.32_0-6195ns_RNA_Ion_res.xtc -pbc res -center

#echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_5744-5904ns.tpr -n index.ndx -fr RMSD_0.44_upto-6195ns.ndx -o RMSD_0.44_0-6195ns_RNA_Ion_res.xtc -pbc res -center

#echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_5744-5904ns.tpr -n index.ndx -fr RMSD_0.60_upto-6195ns.ndx -o RMSD_0.60_0-6195ns_RNA_Ion_res.xtc -pbc res -center

#echo "1" "13" | gmx trjconv -f md_pr_hb_noposres_metad_0-6195ns_RNA_Ion_res.xtc -s md_pr_hb_noposres_metad_5744-5904ns.tpr -n index.ndx -fr RMSD_0.71_upto-6195ns.ndx -o RMSD_0.71_0-6195ns_RNA_Ion_res.xtc -pbc res -center

#plumed driver --mf_xtc RMSD_0.14_0-6195ns_RNA_Ion_res.xtc --plumed plumed_Rg_0.14.dat
#plumed driver --mf_xtc RMSD_0.32_0-6195ns_RNA_Ion_res.xtc --plumed plumed_Rg_0.32.dat
#plumed driver --mf_xtc RMSD_0.44_0-6195ns_RNA_Ion_res.xtc --plumed plumed_Rg_0.44.dat
#plumed driver --mf_xtc RMSD_0.60_0-6195ns_RNA_Ion_res.xtc --plumed plumed_Rg_0.60.dat
#plumed driver --mf_xtc RMSD_0.71_0-6195ns_RNA_Ion_res.xtc --plumed plumed_Rg_0.71.dat
