---
title: Workshop - Deploying Applications in Containers
layout: lab
---

### A Word of Caution
This guide was written primarily from the perspective of a Linux user looking to deploy a completed app on a server. Some examples of popular Linux distributions include Debian, Ubuntu, and Arch.

While not tested, the contents of this guide should also be able to be adapted other operating systems.

## Overview
This guide will cover will be covering a part of a crucial step in making your completed web server a reality: deploying it on a live server. For this guide, we will be writing a very minimal Flask application, and deploying it with Docker.

### What is Docker?
Docker is a computer program that performs operating-system-level virtualization, also known as "containerization". There are many different resources available online explaining the benefits of using Docker to containerize your application, such as [this](https://www.linode.com/docs/applications/containers/when-and-why-to-use-docker/).



## What's Next?
At this point, your app should be fully containerized, and ready to run in a production environment. For the purposes of this guide, we are now more or less done. A very common next step, often called container orchestration, is to set up and configure another application to manage your newly made container (e.g. start/stop, restart on crash, create duplicates). Some popular tools include [kubernetes](https://kubernetes.io/) as well as [marathon](https://github.com/mesosphere/marathon). While out of the scope for this guide, there are several other tutorials teaching you how to set up these services.
