Project Overview

This project involves two main tasks that focus on signal denoising and adaptive filtering. The tasks are designed to help understand the application of stochastic signal processing techniques, specifically the Wiener filter for denoising and the LMS algorithm for adaptive filter identification. The project is implemented in MATLAB™.

Tasks Breakdown

Task 1: Wiener Filter for Denoising

    Objective: Design and implement a Wiener FIR filter to denoise a noisy signal x[n]=d[n]+u[n]x[n]=d[n]+u[n], 
    where d[n]d[n] is the desired signal and u[n]u[n] represents white noise with zero mean and unit variance.
    Approach:
        Use the provided dataset 1.mat containing 300 samples of d[n]d[n] (desired signal) and x[n]x[n] (noisy signal).
        Implement the Wiener filter in MATLAB™ for filter orders p=10,40,80p=10,40,80.
        Plot and compare the filter output with the original desired signal d[n]d[n].
    Deliverables: MATLAB™ plots comparing the filter output for different filter orders with the original signal.

Task 2: LMS Algorithm for Filter Identification

    Objective: Design and implement an LMS (Least Mean Squares) adaptive algorithm to identify the 
    unknown FIR filter that generated a filtered output y[n]y[n] from white noise input u[n]u[n].
    
    Approach:
        Use the provided dataset 2.mat, which contains the signals y[n]y[n] (filtered output) 
        and u[n]u[n] (white noise input). Implement the LMS algorithm in MATLAB™ for filter 
        orders p=2,3,4p=2,3,4 and experiment with two different step sizes for each order.
        Plot the convergence of the filter coefficients for each combination of filter order and step size.
    Deliverables: MATLAB™ plots showing the convergence behavior of the LMS filter coefficients.
