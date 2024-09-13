---
title: "PySpark DataFrames as PyTorch Source"
date: 2024-09-13T11:24:28+02:00
author: "Me"
draft: true
hidemeta: true
description: "Or how to wrap a PySpark DataFrame into a Pytorch IterableDataset efficiently."
disableShare: true
ShowPostNavLinks: false
showToc: true
UseHugoToc: false
---
# Introduction
Suppose you have a large amount of data (say 100GB) and you want to feed it into your neural network via PyTorch. Assuming the data is bigger than RAM/VRAM, you'll need to load data in chunks, and have a small portion of data loaded into memory at any time. This article focuses on using PyTorch's and PySpark's features for streamlining this process. Ideas described here are focused on textual/tabular data, and might not be applicable for image data.
# PyTorch DataSets and DataLoaders
Let's see first how data loading is usually been done in PyTorch. Here's an example code:
## Dataset
## Dataloader
- Only focused on num_workers <= 1
# PySpark DataFrames
## toLocalIterator
# Putting Pieces Together
# Conclusion and Remarks