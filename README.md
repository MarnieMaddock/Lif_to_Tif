# Lif_to_Tif

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

This macro is used to convert .lif files to individual .tif images. This enhances usability of other ImageJ Macros (lif files do not work great with macros).

If you have images from any of the Leica microscopes, the images must be saved individually first as .tif to ensure any of the following macros work :) 
Before using any of the macros I have made/found, all .lif files made with the microscopes have to separated.
I.e. if you have saved photos under a project, each individual picture needs to be saved as its own entity.
![image](https://github.com/MarnieMaddock/SaveAllTif/assets/120872999/dc5e0a01-1021-4205-9a4e-297ab9fadcd6)

To do this:
- Make a folder with all your .lif files (I call this INPUT_Images)
- Open ImageJ
- Drag and drop the 'Lif_to_tif.ijm' into FIJI/ImageJ
- Click Run
- In Input directory select INPUT_images folder
- OK
- All your images are now inside of the folder "TIFF"

Note each image is saved with a unique name. Macro was created by Alexandre Hego and modified by Marnie L. Maddock; 
If you need more informations please contact alexandre.hego@uliege.be or mlm715@uowmail.edu.au, mmaddock@uow.edu.au
