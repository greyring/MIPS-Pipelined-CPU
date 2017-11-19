
The design files are located at
F:/MyProgramme/0arch/PCPU/ipcore_dir:

   - DDR3_SDRAM.veo:
        veo template file containing code that can be used as a model
        for instantiating a CORE Generator module in a HDL design.

   - DDR3_SDRAM.xco:
       CORE Generator input file containing the parameters used to
       regenerate a core.

   - DDR3_SDRAM_flist.txt:
        Text file listing all of the output files produced when a customized
        core was generated in the CORE Generator.

   - DDR3_SDRAM_readme.txt:
        Text file indicating the files generated and how they are used.

   - DDR3_SDRAM_xmdf.tcl:
        ISE Project Navigator interface file. ISE uses this file to determine
        how the files output by CORE Generator for the core can be integrated
        into your ISE project.

   - DDR3_SDRAM.csv:
        Includes the pin out information which is used as support file
        for PlanAhead.

   - DDR3_SDRAM.gise and DDR3_SDRAM.xise:
        ISE Project Navigator support files. These are generated files and
        should not be edited directly.

   - DDR3_SDRAM directory.

In the DDR3_SDRAM directory, three folders are created:
   - docs:
        This folder contains MIG user guide.

   - example_design:
        This folder includes script files to implement and simulate the design.
        This includes the traffic generator RTL modules and example_top module.

   - user_design:
        This folder includes the all RTL modules of controller, phy and
        user interface RTL modules. UCF file is provided.

The example_design and user_design folders contain several other folders
and files. All these output folders are discussed in more detail in
MIG user guide (ug586_7Series_MIS.pdf) located in docs folder.
    