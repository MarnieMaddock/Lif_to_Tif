//********
//This work is licensed under a Creative Commons Attribution 4.0 International License.
// Use in ImageJ (FIJI) using the .ijm language
// Created by Alexandre Hego and modified by Marnie L. Maddock; 
// If you need more informations please contact alexandre.hego@uliege.be
// University of Wollongong, Australia;
// School of Medical, Indigenous and Health Sciences
// Stem Cells and Neural Modelling Lab (Dottori Group)
// mlm715@uowmail.edu.au; mmaddock@uow.edu.au; mdottori@uow.edu.au
//********


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// This macro will convert automatically all the files in .lif in .tif format
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

input = getDirectory("Choose folder with .lif files ");
output = input + "/TIFF/";
File.makeDirectory(output);

// Fresh startup
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//print("\\Clear");
//// close all images
//close("*");
//// empty the ROI manager
//roiManager("reset");
//// empty the results table
//run("Clear Results");
//// configure that binary image are black in background, objects are white
//setOption("BlackBackground", true);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Get a list of files in the input directory
list = getFileList(input);

// Enable Bio-Formats Macro Extensions
run("Bio-Formats Macro Extensions");
setBatchMode(true);
// Convert all the files into tif

// Loop through each file in the list
list = getFileList(input);   
for (i=0; i<list.length; i++) {
	// Check if the file has a ".lif" extension
	if (endsWith(list[i],".lif")){
		inputPath= input +  File.separator + list[i];
		 // Determine the number of series in the LIF file
		Ext.setId(inputPath);
		Ext.getSeriesCount(seriesCount); //-- Gets the number of image series in the active dataset.
		 // Loop through each series in the LIF file
		for (j=1; j<=seriesCount; j++) {
			run("Bio-Formats", "open=inputPath autoscale color_mode=Composite view=Hyperstack stack_order=XYCZT series_"+j);
			name=getTitle();
			
		// save
			saveAs("TIFF", output +File.separator+name+ "_"+j);
			run("Close All");
			run("Collect Garbage");	
		}
	}
}
setBatchMode(false);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
print("Done");
