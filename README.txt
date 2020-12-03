This repository contains the experimental results for our Machine Learning and Optimization final Project. All experimental data is stored in the Experimental_Results directory in JSON format. If you want to rerun the experiments you can use the evaluate_glove.ipynb notebook after following the instructions here to download the data and setup the environment. Recreating the experiments requires >= 16 GB of RAM and likely 1 to 2 days to run them (your computer will not be very responsive/usable during that time). 



ENVIRONMENT SETUP:

The file environment.yml can be used with anaconda to exactly recreate the environment used by running the command:

conda env create -f environment.yml 

In order to then use this environment as a kernel for a jupyter notebook you then run the following two commands (in order):

conda activate GloVe_Project_ML_Opt_2020
python -m ipykernel install --user --name=GloVe_Project_ML_Opt_2020

This same series of commands can also be executed by running the script provided called "setup_anaconda_env.sh" but we included the instructions here in case there are any issues. Note the script must first be set to executable by running the command:

chmod +x setup_anaconda_env.sh

Note that if you don't have anaconda then the above commands will not work. However you can look in the environment.yml file to see exactly which packages are needed to successfully run the notebooks in this repository. They should all be available via Pip if an anaconda env is not going to be used. 



DOWNLOAD PRETRAINED VECTORS INSTRUCTIONS

NOTE: The following script requires unzip command on Linux. Most distro's come with unzip preinstalled but if you can easily install it by running:

sudo apt-get install unzip

If you're unsure whether or not you have unzip installed you can run unzip --help. If you do not have unzip then you will get a message saying command not found. If you do have unzip installed then a standard command line --help message comes up explaining the usage of the command.


INSTRUCTIONS:

In order to download the pretrained vectors from the GloVe website and save them in the locations expected by the notebook "evaluate_glove.ipynb" you can use the script called "download_pretrained_vectors.sh" by running the following commands:

chmod +x download_pretrained_vectors.sh
./download_pretrained_vectors.sh

The script will download all of the vectors used for the experiments as zip files, unzip them, save them in the directory expected by the evaluate_glove notebook and then get rid of the zip files. Warning: the unzipped files require between 5 and 10 gigabytes of space. Also note that the script only downloads 3 of the 4 sets of vectors from https://nlp.stanford.edu/projects/glove/ The files at http://nlp.stanford.edu/data/glove.840B.300d.ziphttp://nlp.stanford.edu/data/glove.840B.300d.zip
are not downloaded because they are extremely large and were not used for any of our experiments (we tried but didn't have enough RAM and our program is dependent on being able to fit the entire embedding matrix in RAM with enough room left to construct analogy matrices.) 


If for any reason the above methods don't work then as a workaround you can manually download the pretrained vectors from https://nlp.stanford.edu/projects/glove/ and then unzip them and manually save them in a directory called "Pretrained_Vectors" located in the root directory of the repository. 
GENERAL NOTES:

Our experimental results are saved in JSON format in the directory "Experimental_Results." If you don't want to recreate the results from scratch then you can use the create_graphics.ipynb notebook to recreate the graphs stored in the Experimental_Results_Graphs directory. Also the original results are stored in JSON format in the Experimental_Results directory and can be easily loaded and analyzed using a jupyter notebook. 