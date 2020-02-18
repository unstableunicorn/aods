# All Of Data Science Image
Docker image with Jupyter notebooks and cmake

## Running Image
First open a command prompt and navigate to the directory with the AODS course material

```
docker run --name container_name -p 8888:8888 -v ${PWD}:/home/jovyan/work elrichindy/aods:latest
```

The terminal will show which link and token to use to connect


## Connecting to image
In the case you need to add libraries to the underlying image
```
docker exec -it -u root container_name /bin/bash
```
Note the 'root' user

You will need to do an apt update first:

```
apt update
```

Then you can install linuc packages:

```
apt install <some linux package>
```

## Creating environments and registering with Jupyter
Sometimes you may need to create other environments, you can do this:

Open a terminal in jupyter then do these steps:
```
#create the new env with conda if, specify the normal conda create eg. python 3.7 in the below

conda create -n my_new_env python=3.7

# you may need to init conda if so run this step

conda init

# activate the new env

conda activate my_new_env

#install jupyter in the env

pip install jupyter

#install the kernal

python kernal install --name "my_new_env" --user

```

In a terminal on your computer restart the docker container

```
docker restart container_name
```

## Istalling python packages in the env
To install packages you can open a terminal in jupyter, activate your env and the install packages
e.g.
```
conda activate my_env_that_needs_a_package
pip install the_package_i_need
```

## if you want to change the theme

Head over to https://github.com/dunovank/jupyter-themes
Packages already installed

Notes:
To update the theme, open a terminal in jupyter and type the following
```
#For dark theme:
jt -t chesterish

#To reset
jt -r
``` 

With the dark theme you will need to change the plots in jupyter to do this add the following to your notebook
```
# import jtplot submodule from jupyterthemes
from jupyterthemes import jtplot

# currently installed theme will be used to
# set plot style if no arguments provided
jtplot.style()
``` 