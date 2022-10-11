// MT-Master, Peter Kienle, CNS 2022-10-11  
//
// TODO
//  can we run full production cycle from MT-Master instead of console?
//  bash console script creates .CSV file - can this be done from OpenScad somehow?

// Open Properties Block=========
//  these variables must be defined here and are carried into MT-Generator & MT-Icebox
//  in case this is run from a bash script the properties are over-ridden by the parameters passed in
productID       = 0;    // 0=millitome_physical, 1=millitome_blockarray, 2=millitome_sampleblocks, 3=millitome_organ, 4=icebox_physical, 5=icebox_virtual

genderID        = 0;    // 0=female, 1=male, needs to be integer selector
organID         = 2;    // index for list lookup
lateralityID    = 0;    // 0=bottom, 1=top, 2=bypass MT creation      
organ_scaleID   = 1;    // 0=large,1=medium,2=small                    

typeID          = 0;    // 0=fixed block size, 1=user block size, 2=user block count

block_size      = 20 ;  // used for type 0, uniform x/y block size for cubes

block_xsize     = 10;   // used for type 1, different x/y block size
block_ysize     = 20;

blocks_x        = 7;    // used for type 2, number of blocks along x, used for calculated block_size
blocks_y        = 14;   // number of blocks along y

//asset_typeID    = 1;    // 0=physical, 1=virtual

output_flag     = 0;    // 0 = ECHO everything, 1 = ECHO insert line only, 2 = ECHO col/row insert ONLY

//===============================
    

// call needed includes with appropriate asset type ID as per user request
if (productID == 0) millitome_physical();
if (productID == 1) millitome_blockarray();
if (productID == 2) millitome_sampleblocks();
if (productID == 3) millitome_organ();
if (productID == 4) icebox_physical();
if (productID == 5) icebox_virtual();


module millitome_physical() {
    asset_typeID = 0;
    include<MT-Generator.scad>;
}

module millitome_blockarray() {
    asset_typeID = 1;
    include<MT-Generator.scad>;  
}

module millitome_sampleblocks() {
    asset_typeID = 2;
    include<MT-Generator.scad>;  
}

module millitome_organ() {
    asset_typeID = 3;
    include<MT-Generator.scad>;  
}

module icebox_physical() {
    asset_typeID = 0;
    include<MT-Icebox.scad>;
}

module icebox_virtual() {
    asset_typeID = 1;
    include<MT-Icebox.scad>;
}

