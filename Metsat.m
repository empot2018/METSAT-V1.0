%% %   METsat_3D is an easy matlab set of codes for reading, manipulating, and display of Metop satallite meteorological data
%      reading NC file content and gather vertical profiles related to same day in a single file 
%      you need to sellect the folder contain daily subfolser in a year,note 1
%      january 2019 is 2019.001  and so on   
%      please note that you need to keep with the program sequence because it is very important where every
%      step will generate variables neded for the next one 
%%               sellect The same year folder which contain daily subfolder for the same data typt
%                 or whatever range use as long as they inside one folder
Read_Variables  %% sellect the folder    to sort and collect single day climatic Parameters
%% 

Read_Calc_TPW   %% sellect the same folder as in the previous step
%%            One dimentional plots it include all the vertical data points
Profiles    %%  you will be prompted to sellect a folder containing profiles(i.e. single day)

%%       Generating Dailly Plots components for daily 3D plots
datafile=(uigetfile({'*.txt';'*.*'},'File Selector'));%% please sellect data file Starting with the word "Data"
data=importdata(datafile);  %% this step will read the data file 
[x,y,z,X,Y,Z,Temp,Temperature,Vp,Vapor_Pressure]=gene_Parameters(data);   %% generating 2D and 3D mesh for data plotting

%% 
% Plotting Temperature
Var_name=Temperature;   %% here we wrie one of the mesh constructed for on of parameters measured by the satallite {Temperature}
Var_Limit=Temp;  %%the name of the variable that will be used to calculate maximum and menimum  Values
% % interval=5
[f1,f2,f3,f4,f5] = PLOT_Var(x,y,z,X,Y,Z,Var_name,Var_Limit,5);  %%Call the plotting function


%% calculation of tpw need to be calculated day by day then avereged over all the days so it 
%  diefferent kind of data regarding dimentions                                                                                                                         %%%            daily plot of TPW
datafile=(uigetfile({'*.txt';'*.*'},'File Selector'));                     %% sellect data file starting with "TPW"
data=importdata(datafile);                                                     %% this step will read the data file 
[x,y,X,Y,tpw,Vp_max,WVP,TPW_1,TPW_Smoothe] = TPW_Parameters(data) ;       %%%generating plot parameters
TPW_2D_Plot_        %%%daily plot of TPW
%% 
                                                    %%calculating and plottind annual average
ANU_AVG_TPW_Plot
