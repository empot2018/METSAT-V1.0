The description of all generated function and what they do in the program 
a very important note the main script is METSAT

Read_Variables: in this step, we will be prompted to select the folder   that contains 
all day’s data files to sort and collect single day climatic Parameters, the code will save 
the sorted data from all NC files into text file starting with the word “Data”, 

Read_Calc_TPW: in this step, we will be prompted to select the folder that contains all day’s
 data files (the same folder as in the previous step), the total precipitable water (TPW) will be calculated 
and saved in a separate text file starting with the word “TPW”.

Profiles: will plot all the vertical profiles measured in the selected day

gene_Parameters: in this step-in order to plot the 2D and 3D figures for each day separately we 
will be prompted to select the file starting by the world “Data” generated in the first step.

TPW_Parameters: we will be prompted to select the file starting by the world “TPW” generated in the 
second step, to generate mesh and grids needed for 2D plots in the next step

TPW_2D_Plot_: 2D plot of the daily TPW

ANU_AVG_TPW_Plot:  this code will plot the annual average TPW global map, in addition to some statistics 
about the daily variation, also this code can run for all the subfolder that mean if we put a month it will 
plot the average monthly TPW and so on     
