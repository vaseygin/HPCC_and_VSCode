#!/bin/bash --login

#SBATCH --time=00:03:00              # 6 minutes run time
#SBATCH --nodes=1                    # 1 node
#SBATCH --ntasks-per-node=1          # 1 task (thing to run) per node
#SBATCH --cpus-per-task=1            # 1 cpu per task
#SBATCH --job-name loop              # descriptive job name

# move into the directory with the program we want to run
cd more_complex

# create the needed file structure
echo "Create the file structure..."
./make_folders.sh

# run the program
./process_files.sh

# extra command to wait for 2 minutes so we can practice terminal commands for managing this job
#sleep 2m
