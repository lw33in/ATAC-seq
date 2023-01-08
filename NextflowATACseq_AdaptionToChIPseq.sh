# Nextflow ATAC-seq peak-calling, QC and differential analysis pipeline (https://nf-co.re/atacseq)
# Below are the steps to set up ATAC-seq on server

#=====================================================================================
# Adaptation to the ChIP-seq pipeline:
#=====================================================================================
# Create virtual environment
python3 -m venv --system-site-packages chipseq

# Activate virtual environment
. chipseq/bin/activate

# Upgrade pip
python -m pip install -U pip

# Install packages
#python -m pip install -r requirements.txt
python -m pip install pymdown-extensions==7.1

# Open tmux: terminal multiplexer which allows you to run multiple programs at the same time and to leave the server while the program keeps running
tmux

# Activate virtual environment
. chipseq/bin/activate

# Export commands to control the configuration of the Nextflow runtime
# export NXF_ASSETS=/opt/projects/../users/nfgitfolder

# Run ChIPseq pipeline without docker- may need further adaptation to the ChIPseq pipeline
nextflow run nf-core/chipseq --input <your data> --genome GRCm38
