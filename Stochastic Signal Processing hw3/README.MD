Project title: Frequency Estimation and System Identification in Stochastic Signal Processing

Project Overview

This project involves three main tasks that focus on frequency estimation, system identification, and signal denoising. The project aims to develop practical knowledge in both parametric and non-parametric techniques for signal processing, as well as to implement custom system identification and noise reduction techniques using MATLAB™.
Tasks Breakdown
Task 1: Frequency Estimation via Periodogram and Parametric Modeling

    Objective: Estimate the dominant frequencies f1,f2,f3f1​,f2​,f3​ of a discrete signal using two methods:
        Periodogram (non-parametric)
        Parametric modeling
    Approach:
        Load the dataset 1.mat, which contains samples of the signal.
        Apply the periodogram method using MATLAB™ built-in functions.
        Use parametric modeling techniques such as AR (Auto-Regressive) models for frequency estimation.
        Compare the frequency estimates from both methods and discuss any discrepancies.
    Deliverables: MATLAB™ plots comparing the estimated frequencies from both methods, 
        along with a discussion on the differences.

Task 2: System Identification of a Linear System

    Objective: Identify the unknown parameters of a linear system based on its input x[n]x[n] and output y[n]y[n].
    Approach:
        Use the dataset 2.mat, which contains samples of the input and output signals.
        Implement a custom methodology to identify the system without using advanced built-in MATLAB™ functions, 
        relying solely on basic vector/matrix operations. Propose and justify the selection 
        of the system identification method used.
    Deliverables: MATLAB™ script showing the implementation of the system identification method, 
        along with results and explanations.

Task 3: Voice Signal Denoising

    Objective: Denoise a corrupted voice signal y[n]y[n], which has been distorted by additive white noise, using a reference noise signal u[n]u[n].
    Approach:
        Load the dataset 3.mat, which contains the noisy voice signal y[n]y[n] and the reference noise signal u[n]u[n].
        Implement a suitable denoising algorithm under the assumption that both noise signals originate from the same generator.
        Use the sound(y) command to listen to the distorted voice signal before and after denoising.
        Analyze the results and discuss the effectiveness of the denoising approach.
    Deliverables: MATLAB™ implementation of the denoising method, and a comparison of the noisy and denoised signals (including aural comparisons).
