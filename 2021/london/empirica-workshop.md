# General Overview

1. First, read this overview and watch the video: [https://docs.empirica.ly/](https://docs.empirica.ly/) But don't actually install anything, just watch!  We'll give you instructions later for a quick installation, if you use one of our recommended setups.
2. Watch the rest of the videos in this playlist: [https://www.youtube.com/watch?v=K2YhEZey_58&list=PLPQelvUwyVgiawBDk3Sp74QMfL8RPgORW](https://www.youtube.com/watch?v=K2YhEZey_58&list=PLPQelvUwyVgiawBDk3Sp74QMfL8RPgORW) (about 10 mins total)
3. Get your system set up.  See more below.
4. Then, follow this tutorial to create a shell app: [https://docs.empirica.ly/getting-started/quick-start](https://docs.empirica.ly/getting-started/quick-start)
5. At this point, pause and play around a bit.  Make sure you understand what's going on.  Ask questions.
6. Finally, proceed through the "Your First Experiment" tutorial.  Part 1 is a good goal for today: [https://docs.empirica.ly/guides/tutorial-your-first-experiment](https://docs.empirica.ly/guides/tutorial-your-first-experiment)

# How to use this tutorial

After following the instructions below for 'system setup', you might be asking:  how do I actually do all this?  This section provides a brief overview of how everything works.

# System Setup: Mac/Linux

### Mac/Linux 1. Install Meteor:
For a Mac or Linux system, open the 'terminal' app and enter the following commands.
    curl https://install.meteor.com/ | sh

### Mac/Linux 2. Install NPM *ON MAC*:
For a Mac, enter the following commands in terminal.  For Linux, use your appropriate installer (e.g. apt install).
    brew update
    brew install node

# System Setup: Windows

### Windows option 1: Windows Native
You can try to get everything installed on Windows native.  We don't have instructions on that.

### Windows option 2: Windows Subsystem Linux 2 (WSL2)
WSL2 is a modern tool introduced by Microsoft to facilitate the use of common web development tools, which generally run on Linux-like systems. We've created a set of instructions that help streamline this process.

Instructions: [https://docs.empirica.ly/getting-started/setup/windows-instructions](https://docs.empirica.ly/getting-started/setup/windows-instructions)

### Windows option 3:  **Linux cloud server**
You may find it easier to set up a linux cloud server with a service such as Amazon Web Services or DigitalOcean.  Many of these provide a free trial tier that is sufficient for today's exercise.  Cloud servers also some advantages in testing during development, because it's easier to demo your app on the internet to share with peers.

In fact, cloud servers are so cheap and easy, that we spun up one each for everyone who registered today.  See instructions below on how to access your cloud server and begin development.

### Cloud Server Setup Instructions

1. Post a message in the &#35;server-request channel and someone will send you an IP address via direct message within a few minutes.  This IP address is unique to your server, so don't share it!  (NOTE: cloud servers will be automatically deleted after this workshop.  If you want to continue working on yours past the scheduled time, just let us know.)
2.  Install VS Code (Visual Studio Code) on your Windows system. [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
3.  Add the "Remote - SSH" extension: [https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
4.  Connect to your remote server within VS Code (*username*: sicss *password*: sicss2021)

