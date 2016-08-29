# Overview
The script `sampleScript.R` generates some data and estimates Ordinary Least Squares (OLS) on it. OLS amounts to some simple matrix algebra. Memory usage is roughly proportional to the size of the data matrix.

To change the size of the data matrix, you can change the values of the parameters `n` and `k`, where `n` corresponds to rows and `k` corresponds to columns.

At the end of the script, I print the size (in bytes) of the data so that you can benchmark this to what you know to be true.