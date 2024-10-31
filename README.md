# Applying-FinRL-Portfolio-Management

## Setup

The below two commands can be used in order to setup and run the code:
```
sudo make setup 
make env-create
```

**Command Functions:**  
* `make setup`: This command installs the necicary depenancies. It is basically just a wrapper 
                the packages that that need to be installed with apt. 
* `make env-create`: This command creates a python enviroment in the `.env` folder, installs the 
                     `requirements.txt` for the project, installs my fork of FinRL, and then
                     installs the env as a kernel for jupyter.

Optionally, `make nb-start` can be run to start a jupyter notebook server. I used this minimally 
because I primarily developed this experiment in VS Code, but I wanted to giving others who
wish to run this the option of easily starting jupyter lab. 

**Just a Little Bit of Yapping:**  
This library was developed on a WSL2 Ubuntu 20.0 instance. A Nvidia RTX 2060 GPU was available 
to make things run a little quicker. Personally, I dislike google colab, so effort was not make
to make this library compatible with colab. Thus, runing this code in colab is untested.

Originally, I was trying to use docker, but then I realized how diffacult it was to setup a 
docker contatiner inside WSL that had both GPU support in addition to no conflicting dependancies
with FinRL. Due to diffaculties, a Makefile was created for setup. 