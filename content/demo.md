---
title: Demo
layout: page
---

## What does demo present?


The aim of this demo is to provide a working example of how mutex implemented scripts can provide a conflict-free environment for developers.

There are three different agents called `hill-fighters`. These hill-fighters mainly represent a state of programmers fighting over one mutex. The one which gets hold of the mutex is called the leader.

Once an agent gets hold of the mutex, it becomes the leader for the next 60 seconds. However, other agents keep refreshing automatically every 30 seconds to look for an unlocked mutex state. 

With the help of our frontend application called `presenter` you can visualize the status of these 3 agents.  Via this application, you can either  `unlock the mutex` or `die`  by clicking the respective buttons.

`unlock the mutex` : This command button tries to unlock the mutex if you are the leader. Once unlocked, the mutex is now open to be grabbed by either of the three agents.

`die` : Command die is similar to abrupt command. On the usage of this command, the agent loses control over the mutex and all the agents have to wait till the mutex expires. 

Agents are automatically resurrected after the die command is used. It is possible (if they have enough luck) to become a leader again as well.

You can check the demo [here](https://demo.testandset.com) or see the source code on [GitHub](https://github.com/maindev/testandset-demo)

