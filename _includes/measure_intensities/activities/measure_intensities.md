### Measure object intensities
  - Measure intensities (with background subtraction)
    - Open image [xy_16bit__h2b.tif](https://github.com/NEUBIAS/training-resources/raw/master/image_data/xy_16bit__h2b.tif)
      - H2B-mCherry staining acquired with a widefield microscope
    - Open label mask [xy_8bit_labels__h2b.tif](https://github.com/NEUBIAS/training-resources/raw/master/image_data/xy_8bit_labels__h2b.tif)
    - Using the label mask, measure the mean and max intensities as well as the objects' pixel area.
      - Exports the results as a table (and open in a spreadsheet software)
    - Manually measure the mean intensity in the background.
      - Add the background measurement as a new column to the table
    - Create new columns for background corrected mean, max, and sum intensity.
    - Discuss the measurements' biophysical interpretation
    - Optional: Repeat measurements with larger labels
      - Open label mask [xy_8bit_labels__h2b_dilate_labels.tif](https://github.com/NEUBIAS/training-resources/raw/master/image_data/xy_8bit_labels__h2b_dilate_labels.tif)
      - Appreciate that it is not always clear how large exactly the label regions have to be
      - Measure the intensities again, now with the larger label mask
      - Discuss which values changed and by how much percent
  - Inspect images where intensity quantification may not be possible
    - [xyc_16bit__embryo_transmission_fluorescence.tif](https://github.com/NEUBIAS/training-resources/raw/master/image_data/xyc_16bit__embryo_transmission_fluorescence.tif)
      - Channel 1: Transmission image showing the object location
      - Channel 2: Fluorescence image that should be quantified within the object
        - Appreciate that the signal to noise is very low (CCD noise) and it is hard to decide which background to subtract.
