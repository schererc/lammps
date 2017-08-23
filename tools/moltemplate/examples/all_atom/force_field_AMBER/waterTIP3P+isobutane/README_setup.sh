
# Create LAMMPS input files this way:
cd moltemplate_files

  # run moltemplate

  moltemplate.sh system.lt

  # Moltemplate generates various files with names ending in *.in* and *.data.
  # Move them to the directory where you plan to run LAMMPS (in this case "../")
  mv -f system.data system.in* ../

  # Optional:
  # The "./output_ttree/" directory is full of temporary files generated by
  # moltemplate.  They can be useful for debugging, but are usually thrown away.
  #rm -rf output_ttree/

cd ../




# Optional:
# Note: The system.data and system.in.settings files contain extra information
# for atoms defined in OPLSAA which you are not using in this simulation.
# This is harmless, but if you to delete this information from your
# system.in.settings and system.in.data files, run this script:
#
# cleanup_moltemplate.sh
