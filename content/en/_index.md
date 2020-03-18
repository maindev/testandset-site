+++
title = "TestAndSet"
linkTitle = "About"
+++

{{% blocks/cover title="TestAndSet" image_anchor="top" height="full" color="primary" byline="Photo by Dominik Dvořák on Unsplash" %}}
With TestAndSet we provide a service where you can handle atomic operations in distributed environments.

You don't need to setup your own locking tool.

With TestAndSet you can handle custom web-based mutexes from the TestAndSet API.

Mutexes can be integrated in your scripts, whereever you need them.

Read on to find out more, or visit our [documentation](/docs/) to get started!

{{% blocks/link-down color="info" %}}
{{% /blocks/cover %}}

{{% blocks/lead color="info" %}}
### Why should you use TestAndSet?
<hr />
<p>
Have you ever started a job to change some data which crashed because someone else was manipulating the same data at the same time? In the worst case the data has to be manually fixed to get back to the state it had before you two started your jobs. This can be a mess.
</p>

<p>
Choose an unique key for your team which is known by all people working with your mutex protected scripts. Run your script with the TestAndSet mutex lock and your scripts run one after another without conflicts. It is that simple.
</p>
{{% /blocks/lead %}}

{{% blocks/section color="primary" type="section" %}}
<h3 class="text-center">
Use cases where TestAndSet can help you
<hr />
</h3>
<div class="row text-center">
    <div class="col-3">
      <h4>software deployment</h4>
    </div>
    <div class="col-3">
      <h4>leader election</h4>
    </div>
    <div class="col-3">
      <h4>batch job orchestration</h4>
    </div>
    <div class="col-3">
      <h4>many more...</h4>
    </div>
</div>
{{% /blocks/section %}}