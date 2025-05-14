---
weight: 10
hidden: false
---

### General
The docker-compose files in [this repository](https://github.com/SynBioHub/SynBioHub2-docker) contains various configurations for deploying SynBioHub2.

The base configuration, described with `docker-compose.yml`, is simply SynBioHub2, its graph database Virtuoso, and an autohealer.

To run the base configuration:

1. Before trying to run SynBioHub2 locally on your PC, Make sure that you have [Git](https://git-scm.com/downloads) and [Docker](https://docs.docker.com/get-started/get-docker/) installed.

2. Open the terminal/cmd. You may need to run some commands as administrator/superuser. If you run into any errors try this first. Tip for windows: you need to start the terminal app as admin and you cant run individual commands as admin like on mac or linux.

3. Navigate to the directory where you want to install SynBioHub2.
   
   `cd directory_name`
   
   If you need a refresher on terminal feel free to read [this article](https://www.lifewire.com/change-directories-in-command-prompt-5185508)

4. Subsequently, enter the following command into your terminal:

   ``` bash
   git clone -b snapshot https://github.com/SynBioHub/SynBioHub2-docker
   cd SynBioHub2-docker
   ```
   
   This downloads a copy of the snapshot branch, which is known to work.

5. Then, enter the following command to start the local instance of SynBioHub2:
      
   `docker-compose -f ./docker-compose.yml up`
   
   This is the step where you most likely need to use root.
   On macos or linux add sudo to the start of the command before typing the rest.
   On windows make sure you are in an admin terminal, if not open a new terminal as admin, and then redo step 3 and come back to step 5.

   
6. In your browser search for localhost:3333 and it'll take you to a setup page when you'll run it for the very first time. From here you should go to the **[NEXT STEP](/setup)** if you want to continue. If you want to know how to shut down SynBioHub2 continue reading.

7. The following command stops a local instance of SynBioHub2 (but only if you are in the correct directory, see step 3):

   `docker-compose -f ./docker-compose.yml down`
  	

### With SBOLExplorer
You can also run SynBioHub2, by using SBOlExplorer.
To add [SBOLExplorer](https://github.com/michael13162/SBOLExplorer), add the `docker-compose.explorer.yml` to the main docker-compose, i.e. for step 5 run the following command: 

`sysctl -w vm.max_map_count=262144`

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml up`

**The `sysctl -w vm.max_map_count=262144` command runs only on linux, it is needed for Elastic Search, a component of SBOLExplorer. It is likely unnecessary on MacOS***

### With Plugins
If you are unfamiliar with plugins, please read [the docs](/#articles/3_advanced/plugins)

To add plugins to the configuration, change the command mentioned in step 5 to: 

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml -f ./docker-compose.<Plugin 1 File Name>.yml -f ./docker-compose.<Plugin 2 File Name>.yml up`

Note that all plugins are added before the `up` and each is preceeded by `-f `. For example, to run the configuration with the VisualIgem plugins and the VisualSeqviz plugin run:

`docker-compose -f ./docker-compose.yml -f ./docker-compose.explorer.yml -f ./docker-compose.pluginVisualIgem.yml -f ./docker-compose.pluginVisualSeqviz.yml up`

A table of currently available plugins can be found [here](https://synbiohub.github.io/SynBioHub2-docker/#plugins).

## Installation From Source

**Installation from source is not recommended for non contributors due to requiring many dependencies of specific versions.**

Follow the instructions on the following [GitHub README](https://github.com/SynBioHub/SynBioHub3) to install SynBioHub2 locally onto your system.
