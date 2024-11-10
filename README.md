# Applying-FinRL-Portfolio-Management
## Overview 

This study investigates the use of Deep Reinforcement Learning (DRL) for dynamic portfolio management in stock trading, aiming to enhance returns while managing risk. Traditional static models often struggle with the rapid, unpredictable changes in financial markets. By modeling portfolio management as a Markov Decision Process (MDP), we designed an environment where a DRL agent can make trading decisions based on asset technical indicators and covariances. Testing on sixteen years of historical data, three out of four DRL models outperformed a buy-and-hold strategy on the Dow Jones Industrial Average Index, with the A2C model achieving the highest cumulative return and Sharpe ratio, despite its simplicity. These results underscore the potential of DRL for adaptive, high-performing trading strategies, highlighting areas for further exploration in model complexity and reward schemes.

The project here was performed for the Purdue University course ECE570: Artificial Intelligence. The experiment, term paper, and code video are all contianed within this repository. 

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