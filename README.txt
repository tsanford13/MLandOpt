What's been done:

I'm doing the actual analysis of the model in the notebook called evaluate_glove. I've implemented loading the vectors given a filepath, and I'm currently working on a function which will take a list of filepaths to files containing BATS analogies and return a dictionary of relevant info about the model performance on the analogies in each test file. My end goal is that I'll output the data on all of the experiments as a json file (see example_experiment_output.txt for an example of the relevant JSON format). 



What's Next:

If someone could start a new notebook in the home directory where they write functions to read in the experiment data from the JSON files I'll be creating (I haven't finished but again, see example_experiment_outcome.txt to understand the format) then create graphics for our presentation. The graph on https://vecto.space/projects/BATS/ in the "Performance on BATS" section is good in my opinion. I think a bar graph is a good format for showing the various accuracies. 

Also if anyone wants to look for other pretrained word vectors that would be good. Ideally ones which can be downloaded in the same format as the GloVe ones but other formats could be useful still if we have time to add functionality to parse them. 
