mol load xtc md_pr_hb_noposres_metad_0-300ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_0-300ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile

mol delete all



mol load xtc md_pr_hb_noposres_metad_14-314ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_14-314ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all

mol load xtc md_pr_hb_noposres_metad_152-452ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_152-452ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all

mol load xtc md_pr_hb_noposres_metad_287-537ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_287-537ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all


mol load xtc md_pr_hb_noposres_metad_295-545ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_295-545ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all


mol load xtc md_pr_hb_noposres_metad_497-747ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_497-747ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all


mol load xtc md_pr_hb_noposres_metad_768-1018ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_768-1018ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all


mol load xtc md_pr_hb_noposres_metad_976-1186ns_RNA_Ion_h2o_OW_res.xtc gro npt_150ns_posres_RNA_free_Ion_water_RNA_Ion_h2o_OW_res.gro
set nf [molinfo top get numframes]
set outfile [open "local_no_H2O_oxygen_count_around_MG_976-1186ns.dat" w]
for { set x 0 } { $x < $nf } { incr x } {
                set sel [atomselect top "{(within 3.0 of resname MG) and (name MW)}" frame $x]
                set sel1 [$sel get index]
                set sel2 [llength $sel1]
                puts $outfile "$x\t$sel2"
                $sel delete
                unset sel1
                unset sel2
}

close $outfile
mol delete all
