---
weight: 10
---

# Installation

## General
The Docker Compose files in [this repository](https://github.com/SynBioHub/SynBioHub2-docker) contain various configurations for deploying SynBioHub2.

The base configuration, described in `docker-compose.yml`, is simply SynBioHub2, its graph database Virtuoso, and an autohealer.

To run the base configuration:

1. Before trying to run SynBioHub2 locally on your PC, make sure that you have [Git](https://git-scm.com/downloads) and [Docker](https://docs.docker.com/get-started/get-docker/) installed.

2. Open the terminal/cmd. You may need to run some commands as administrator/superuser. If you run into any errors, try this first. Tip for Windows: you need to start the terminal app as admin, and you can't run individual commands as admin like on macOS or Linux.

3. Navigate to the directory where you want to install SynBioHub2.

   `cd directory_name`

   If you need a refresher on the terminal, feel free to read [this article](https://www.lifewire.com/change-directories-in-command-prompt-5185508).

4. Subsequently, enter the following command into your terminal:

   ```bash
   git clone -b snapshot https://github.com/SynBioHub/SynBioHub2-docker
   cd SynBioHub2-docker
   ```

   This downloads a copy of the snapshot branch, which is known to work.

5. Then, enter the following command to start the local instance of SynBioHub2:

   `docker-compose -f ./docker-compose.yml up`

   This is the step where you most likely need to use root.
   On macOS or Linux, add `sudo` to the start of the command before typing the rest.
   On Windows, make sure you are in an admin terminal. If not, open a new terminal as admin, then redo step 3 and come back to step 5.


6. In your browser, search for `localhost:3333`, and it'll take you to a setup page when you run it for the very first time. From here, go to the **[NEXT STEP](setup.md)** if you want to continue. If you want to know how to shut down SynBioHub2, continue reading.

7. The following command stops a local instance of SynBioHub2 (but only if you are in the correct directory, see step 3):

   `docker-compose -f ./docker-compose.yml down`


## With SBOLExplorer
You can also run SynBioHub2 by using SBOLExplorer.
To add [SBOLExplorer](https://github.com/michael13162/SBOLExplorer), add the `docker-compose.explorer.yml` to the main Docker Compose file, i.e., for step 5, run the following command:

`sysctl -w vm.max_map_count=262144`

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml up`

**The `sysctl -w vm.max_map_count=262144` command runs only on Linux; it is needed for Elasticsearch, a component of SBOLExplorer. It is likely unnecessary on MacOS.**

## With Plugins
If you are unfamiliar with plugins, please read [the docs](../3_advanced/plugins.md).

To add plugins to the configuration, change the command mentioned in step 5 to:

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml -f ./docker-compose.<Plugin 1 File Name>.yml -f ./docker-compose.<Plugin 2 File Name>.yml up`

Note that all plugins are added before the `up`, and each is preceded by `-f `. For example, to run the configuration with the VisualIgem plugins and the VisualSeqviz plugin, run:

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml -f ./docker-compose.pluginVisualIgem.yml -f ./docker-compose.pluginVisualSeqviz.yml up`

A table of currently available plugins can be found [here](https://synbiohub.github.io/SynBioHub2-docker/#plugins).

## Installation From Source

**Installation from source is not recommended for non-contributors due to requiring many dependencies of specific versions.**

Follow the instructions on the following [GitHub README](https://github.com/SynBioHub/SynBioHub3) to install SynBioHub2 locally onto your system.

**[Next, you should set up your instance before going public](setup.md)**