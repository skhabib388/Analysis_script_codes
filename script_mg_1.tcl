mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Docked_cmap_0.797-0.944_eRMSD1_0.14-0.26_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_MG_Docked_cmap_0.797-0.944_eRMSD1_0.14-0.26_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname MG)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile

mol delete all

mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Docked_cmap_0.797-0.944_eRMSD1_0.14-0.26_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_NA_Docked_cmap_0.797-0.944_eRMSD1_0.14-0.26_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname NA)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile

mol delete all



mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Int_1_cmap_0.85-0.95_eRMSD1_0.9-1.02_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_MG_Int_1_cmap_0.85-0.95_eRMSD1_0.9-1.02_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname MG)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all

mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Int_1_cmap_0.85-0.95_eRMSD1_0.9-1.02_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_NA_Int_1_cmap_0.85-0.95_eRMSD1_0.9-1.02_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname NA)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all

mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Int_23_cmap_eRMSD1_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_MG_Int_23_cmap_eRMSD1_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname MG)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all


mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Int_23_cmap_eRMSD1_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_NA_Int_23_cmap_eRMSD1_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname NA)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all


mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Undocked_12_cmap_eRMSD1_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_Undocked_12_cmap_eRMSD1_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname MG)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all


mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Undocked_12_cmap_eRMSD1_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_NA_Undocked_12_cmap_eRMSD1_0-1862ns.dat" w]
set nres 260
for { set x 0 } { $x < $nf } { incr x } {
        for { set y 104 } { $y <= $nres } { incr y } {
                set sel [atomselect top "{(within 5.0 of name O1P O2P and resid $y) and (resname NA)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$y\t$sel2"
                $sel delete
                unset sel1
                unset sel2
        }
}
close $outfile
mol delete all

