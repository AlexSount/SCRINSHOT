% The tiling module is part of the Integrated analysis for sequencing
% created by Xiaoyan Qian (Sequencing v2.5 lite, 2015-6-30)
% All variables ending with _YN are yes or no (1 or 0) questions.

clear, clc; close all; drawnow;

% Choose functions to run
run_Tiling_YN = 1;
%================================================
% set parameters
%----------------------------
% Tiling_Sequencing
    folder_image = 'C:\Users\alex\Desktop\SCRINSHOT_paper\analysis_procedure\507_s7\input'; % preferably full path name
    filename_hyb_prefix = 'hyb';  % keep single quote marks
        in_subfolder_YN = 0;
    filename_channel_prefix = '_c';
    filename_suffix = '_ORG.tif';
    hyb_max = 1;       channel_max = 20;
    x_size = 2500;      y_size = 2500;
    % options
    create_CSV_file_YN = 1; 
        CSV_filename_prefix = '507_s7';
        channel_order = {'Nuclei' 'gene1' 'gene2' 'gene3' 'gene4' 'gene5' 'gene6' 'gene7' 'gene8' 'gene9' 'gene10' 'gene11' 'gene12' 'gene13' 'gene14' 'gene15' 'gene16' 'gene17' 'gene18' 'gene19'};
%----------------------------

%================================================
if run_Tiling_YN
else
    error('Choose at least one function.');
end

if run_Tiling_YN
    Tiling_Sequencing_2(folder_image,filename_hyb_prefix,in_subfolder_YN,...
        filename_channel_prefix,filename_suffix,hyb_max,channel_max,...
        x_size,y_size,create_CSV_file_YN,CSV_filename_prefix,channel_order);
end


clear;   
    