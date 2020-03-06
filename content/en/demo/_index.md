---
title: "Demo"
linkTitle: "Demo"
menu:
  main:
    weight: 10
description: 
---

{{% blocks/section color="white" type="section" %}}
## What does demo present?

There are 3 boxes called `hill-fighters` which are fighting over one mutex. The one which holds it is the leader.

There is also one frontend application called `presenter` which is showing the statuses of these 3 boxes.
You are able to order specific box to `unlock the mutex` or `die` by clicking one of the buttons in frontend app.

The mutex is taken for 60 seconds, each box refreshes it every 30 seconds. When you order one box to unlock it,
another box (or the same one) can imaditianely obtain it, but when the box dies, all of them have to wait till
the mutex expires.
Boxes are automatically resurrected after they are killed so it's possible (if they have enough luck) to become a leader again as well.

You can play with the demo page <a href="https://demo.testandset.com" target="_blank">here</a> or see the source code on <a href="https://github.com/maindev/testandset-demo" target="_blank">GitHub</a>.
{{% /blocks/section %}}