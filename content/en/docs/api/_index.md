---
title: "API reference"
linkTitle: "API reference"
weight: 2
description: 
---

The API locks your mutex key for a small amount of time. You can refresh the mutex to continue your lock while your script is still working on data which should be unusuable for other access working with the same mutex key. When your work is done mutex keys can be unlocked until the next usage.

...