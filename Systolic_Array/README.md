# Systolic_Array
 Systolic array for 3x3 size matrix multiplication
input dimensions - 
 A - 3x3
 B - 3x3

## Systolic array Arrangement
<picture>
  <img alt="" src="https://github.com/saicharan1213/Physical-Design/blob/main/Systolic_Array/IMG-0230.jpg?raw=true" width="400" height="400">
</picture>

## Simulation Result
<picture>
  <img alt="image with pins visibility" src="https://github.com/saicharan1213/Physical-Design/blob/main/counter%20design/layout_virtuoso.png" width="700" height="500">
</picture><br/>
1. The Matrix multiplication output from systolic array is available at (2M-1)+N time where M and N are dimensions of the inputs i.e; NxM and M xN<br/>
2. Since the 2 input matrices are of size 3x3 the output is available at 8th cycle.
