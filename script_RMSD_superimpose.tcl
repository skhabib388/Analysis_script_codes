mol load pdb RMSD_0.1_Rg_all.pdb
set frame0 [atomselect top "nucleic" frame 0]
set nf [molinfo top get numframes]
for {set i 0} {$i < $nf} { incr i } {
set sel2 [atomselect top "nucleic"]
$sel2 frame $i
$sel2 move [measure fit $sel2 $frame0]
}
