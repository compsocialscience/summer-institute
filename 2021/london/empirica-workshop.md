# General Overview

1. First, read this overview and watch the video: [https://docs.empirica.ly/](https://docs.empirica.ly/) But don't actually install anything, just watch!  We'll give you instructions later for a quick installation, if you use one of our recommended setups.
2. Watch the rest of the videos in this playlist: [https://www.youtube.com/watch?v=K2YhEZey_58&list=PLPQelvUwyVgiawBDk3Sp74QMfL8RPgORW](https://www.youtube.com/watch?v=K2YhEZey_58&list=PLPQelvUwyVgiawBDk3Sp74QMfL8RPgORW) (about 10 mins total)
3. Get your system set up.  See more below.
4. Then, follow this tutorial to create a shell app: [https://docs.empirica.ly/getting-started/quick-start](https://docs.empirica.ly/getting-started/quick-start)
5. At this point, pause and play around a bit.  Make sure you understand what's going on.  Ask questions.
6. Finally, proceed through the "Your First Experiment" tutorial.  Part 1 is a good goal for today: [https://docs.empirica.ly/guides/tutorial-your-first-experiment](https://docs.empirica.ly/guides/tutorial-your-first-experiment)

# How to use this tutorial

First, follow the **steps 1 through 3** above, using the instructions below to get your system set up for either Mac/Linux or Windows.

Then, follow the tutorial **step 4** above.  If you followed along the Windows video, you did this.  This step will create a template of an app (you do this with `npx create-empirica-app`) using the Meteor/ReactJS web development framework.  Now, all you have to do is customize the files.

**Step 5** invites you to stop and explore.  This is a good idea.  Ask us and each other questions in Slack if you feel confused.  

*How does it work?*  Running the "meteor" command will start up a "local" web serer accessible through localhost:3000 or ip.address:3000 (where "ip.address" is the IP address of the cloud server we provided) because it's running on port 3000 of your system.  See wikipedia for [more info on ports](https://en.wikipedia.org/wiki/Port_(computer_networking)) and general [web dev](https://en.wikipedia.org/wiki/Meteor_(web_framework)).  So when you visit localhost:3000 you see what an experimental subject sees, and when you visit localhost:3000/admin you get the experimenter panel.  A password was automatically generated in the terminal when you ran the `meteor` command.

When you're ready, move to **step 6** and actually work through the tutorial.  You'll edit the code you made in step 4 according to the instructions in the tutorial.  If you follow the tutorial perfectly, it will work.  If you hit an error or a blank screen.. you'll need to debug.  In Firefox/Chrome you can right-click on the page to "inspect" and then see a Javascript 'console'.  This will show output for client-side errors.  Your Mac/Linux terminal will show you server-side errors.  With a lot of registered participants, we can't necessarily provide hands-on guidance for every error (though we'll try) but please post screenshots in the #debug channel and maybe someone from the community can help if we're too busy.  But before you do that, you know the drill: hunt for missing semicolons or quotation marks, typos in syntax or commands.  

### Coding "Checkpoints"

In case you're working in teams and one person falls behind, we've created 'checkpoints' as Git branches.  To use these, open your terminal, and enter the following commands: 
```
cd ~ 
git clone https://github.com/empiricaly/your-first-experiment
cd your-first-experiment
git branch -a
```

These commands let you clone the repository and view branches.  Then, you switch to branches with the command `git switch 0/create-empirica-app` or `git switch 1/getting-started` to jump to various points in the tutorial.  Note, the branch name refers to the completed code for the section, e.g. `git switch 4/chats` will get you completed code for an experiment with chats. You can then ***import** 'experiment-as-code' in the Empirica console* for those branches with a yaml file, as in `4/chats` containing the file `4-factors.yaml`.  

Finally, in order to run Empirica from a git clone (vs with `npx create-empirica-app`) you must run the command `meteor npm install` to install any dependencies.

### Slack Channels
Find us in the main &#35;sicss-fest-2021 channel for general discussion and questions related to Empirica and the tutorial specifically.  Use the &#35;debug channel to post questions about general errors e.g. with javascript.  Use the &#35;windows-to-linux channel to discuss connecting to a cloud linux server from Windows, and the &#35;windows-native channel for using Windows natively or with WSL2.  Use the &#35;mac-os channel for mac discussion. 

# System Setup: Mac/Linux

### Mac/Linux 1. Install Meteor:
For a Mac or Linux system, open the 'terminal' app and enter the following commands.
```
curl https://install.meteor.com/ | sh
```

### Mac/Linux 2. Install NPM *ON MAC*:
For a Mac, enter the following commands in terminal.  For Linux, use your appropriate installer (e.g. apt install).
```
brew update
brew install node
```

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
See this video:  [https://youtu.be/1jpHXho1EiE](https://youtu.be/1jpHXho1EiE) *Note: it's 20 mins, only because it takes some time for the install to run, during which I tell you about research with Empirica.  You can follow along and be set up by the end.*
1. Post a message in the &#35;server-request channel and someone will send you an IP address via direct message within a few minutes.  This IP address is unique to your server, so don't share it!  (NOTE: cloud servers will be automatically deleted after this workshop.  If you want to continue working on yours past the scheduled time, just let us know.)
2.  Install VS Code (Visual Studio Code) on your Windows system. [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
3.  Add the "Remote - SSH" extension: [https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
4.  Connect to your remote server within VS Code (*username*: sicss *password*: sicss2021)
5.  Install meteor: 
```
curl https://install.meteor.com/ | sh
```
6. Install NPM:
```
sudo apt update
sudo apt install npm
```


