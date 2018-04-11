# Docker Cookiecutter Data Science
_Helping Data Science teams easily move to a Docker-first development workflow to iterate and deliver projects faster and more reliably._

This project is forked from the [cookiecutter-data-science](https://github.com/drivendata/cookiecutter-data-science) repository. The full README from that project is available below.

This cookiecutter is used in conjunction with a base development image available in [Docker Hub](https://hub.docker.com/r/manifoldai/docker-ml-dev/) to provide an out-of-the-box ready environment for many Data Science and Machine Learning project use cases.
After running this cookiecutter and the provided start script a developer will have a local development setup that looks like this: 

![docker local dev](https://s3-us-west-1.amazonaws.com/manifold-public-no-vpn/torus_local_dev.png)

By scaffolding your data science projects using this cookiecutter you will get:

- Project Docker image built with your own Dockerfile for project specific requirements
- Docker Compose configuration that dynamically binds to a free host port and forwards to the jupyter server listening port inside the container
- Shared volume configuration for accessing and executing all your project code inside of the controlled container environment
- Ability to edit code using your favorite IDE on your host machine and seeing real-time changes to the runtime environment
- Jupyter notebook fully configured with nb-extensions ready for development and feature engineering
- Common data science and plotting libraries pre-installed in the container environment to start working immediately

There are several downstream benefits for moving to a container-first workflow in terms of model and inference engine deployment/delivery.
By using containers early in the development cycle you can remove a lot of the configuration management issues that waste developer time and ultimately lower quality of deliverables.

## Getting Started (Mac)
1. Install Docker for Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
2. Install Python Cookiecutter package: http://cookiecutter.readthedocs.org/en/latest/installation.html >= 1.4.0
    ``` bash
    $ pip install cookiecutter
    ```
    It is recommended to set up a central virtualenv or condaenv for cookiecutter and any other "system" wide Python packages you may need.
3. Run the cookiecutter docker data science template to scaffold your new project:
    ``` bash
    $ cookiecutter https://github.com/manifoldai/docker-cookiecutter-data-science.git
    ```
4. Answer all of the cookiecutter prompts for project name, description, license, etc.
5. Run the start script from the level of your new project directory:
    ``` bash
    $ ./start.sh
    ```
6. After the project image builds check which host port is being forwarded to the Jupyter notebook server inside the running container:
    ``` bash
    $ docker ps 
    ```
7. Using any browser access your notebook at localhost:{port}
8. Start working!

For more details on what packages are available pre-installed in the base image see the manifoldai/docker-ml-dev repository page on [Docker Hub](https://hub.docker.com/r/manifoldai/docker-ml-dev/).

## Helpful Resources 
- Docker command cheatsheet: https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf
- Dockerfile reference: https://docs.docker.com/engine/reference/builder/
- Docker Compose reference: https://docs.docker.com/compose/compose-file/

## Contributing
PRs and feature requests very welcome!

---

# Cookiecutter Data Science

#### [Project homepage](http://drivendata.github.io/cookiecutter-data-science/)


### Requirements to use the cookiecutter template:
-----------
 - Python 2.7 or 3.5
 - [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: This can be installed with pip by or conda depending on how you manage your Python packages:

``` bash
$ pip install cookiecutter
```

or

``` bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```


### To start a new project, run:
------------

    cookiecutter https://github.com/drivendata/cookiecutter-data-science


[![asciicast](https://asciinema.org/a/9bgl5qh17wlop4xyxu9n9wr02.png)](https://asciinema.org/a/9bgl5qh17wlop4xyxu9n9wr02)


### The resulting directory structure
------------

The directory structure of your new project looks like this: 

```
├── LICENSE
├── Makefile           <- Makefile with commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default Sphinx project; see sphinx-doc.org for details
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
│
├── src                <- Source code for use in this project.
│   ├── __init__.py    <- Makes src a Python module
│   │
│   ├── data           <- Scripts to download or generate data
│   │   └── make_dataset.py
│   │
│   ├── features       <- Scripts to turn raw data into features for modeling
│   │   └── build_features.py
│   │
│   ├── models         <- Scripts to train models and then use trained models to make
│   │   │                 predictions
│   │   ├── predict_model.py
│   │   └── train_model.py
│   │
│   └── visualization  <- Scripts to create exploratory and results oriented visualizations
│       └── visualize.py
│
└── tox.ini            <- tox file with settings for running tox; see tox.testrun.org
```
