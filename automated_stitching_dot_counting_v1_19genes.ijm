output = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/s7_1pixel_images/";

cell_mask = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/507_s7_all_cell_rois.zip";

input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene1_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene1_1pixel/ file_names=gene1_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Show All");
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();



input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene2_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene2_1pixel file_names=gene2_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene3_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene3_1pixel file_names=gene3_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene4_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene4_1pixel file_names=gene4_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene5_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene5_1pixel file_names=gene5_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();

input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene6_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene6_1pixel file_names=gene6_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene7_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene7_1pixel file_names=gene7_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene8_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene8_1pixel file_names=gene8_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene9_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene9_1pixel file_names=gene9_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene10_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene10_1pixel file_names=gene10_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene11_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene11_1pixel file_names=gene11_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene12_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene12_1pixel file_names=gene12_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene13_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene13_1pixel file_names=gene13_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene14_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene14_1pixel file_names=gene14_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene15_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene15_1pixel file_names=gene15_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene16_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene16_1pixel file_names=gene16_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene17_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene17_1pixel file_names=gene17_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene18_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene18_1pixel file_names=gene18_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();


input = "C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene19_1pixel/";
name = File.getName(input); 
print(name)

run("Grid/Collection stitching", "type=[Grid: row-by-row] order=[Right & Down                ] grid_size_x=3 grid_size_y=2 tile_overlap=0 first_file_index_i=1 directory=C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/output/gene19_1pixel file_names=gene19_{iii}.tiff output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save computation time (but use more RAM)] image_output=[Fuse and display]");
run("Specify...", "width=6700 height=5000 x=0 y=0");
run("Crop");

saveAs("Tiff",output+name);

run("ROI Manager...");
roiManager("Open", cell_mask);
roiManager("Measure");
saveAs("Results", output+name+".csv");
run("Clear Results");
roiManager("Delete");
run("Close");
close();



