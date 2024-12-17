
<img src="./.assets/ObsidianSync.png"><br>

This repo aims to propose an initialization folder to synchronize its Obsidian vault in GitHub.<br><br>

# Table of Contents
- [Installation](#installation)
- [Synchronization](#synchronization)
<br><br>


## Installation

1. Download [Obsidian packages](https://obsidian.md/download).
2. Download Git project before runnning Obsidian.
    ```bash
    git clone https://github.com/shinydisk/ObsidianSync.git
    ```
3. Install & open Obsidian.
4. Click on "**Open folder as vault**" and select the Git project you just cloned.

> You can remove **assets folder** ands edit **REAMDE file** for clean installation
## Synchronization

Create some notes in your new environment.
Before create the new repository, you just need to run the script ``.ObsidianSync`` to sync your Obsidian in your new repository.

1. Open your terminal, go to the directory that corresponds to your Obsidian path and type the following commands :
```bash
git remote add origin git@github.com:username/ObsidianSync.git
git branch -M master
git push -u origin master
```

2. It’s time to sync your directory with Github. Type these commands (follow the comments for understanding)
```bash
chmod +x .ObsidianSync # This makes the file executable
./.ObsidianSync
```

In this example, I show you how to synchronize your Obsidian with Git using the script :
<div align="center">
  MIT licensed | Copyright © 2024 Shinydisk, <a href="https://abkr.fr">abkr.fr</a>
</div>
