mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_MG_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.dat" w]
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

mol load gro npt_10ns_298K_posres_RNA_free_ION_water_res_RNA_Ion.gro xtc md_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.xtc
set nf [molinfo top get numframes]
set outfile [open "local_no_of_NA_Docked_cmap_0.8081-0.9756_d_0.9793-1.109_0-1862ns.dat" w]
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
