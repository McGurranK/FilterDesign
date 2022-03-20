%Task 1
clc;clear;

%% 1. Import audio from task1sig.wav into matlab.
% 2. Display signal in time domain graph with correct labelling and axis's.

filename = 'task1sig.wav'; % Naming audio file as variable Filename
figure(1)
[sig,fs, figure1]=audiodisplay(filename,'Figure 1'); % Function audiodisplay
% Function outputs sampled audio data, sampling frequncy and a time domain plot. 

% Type 'help audiodisplay' in the command window for more information.


%% 3. Display left to right Naive values floating values, and Normalise Values.
% (In Command Window or in MsgBox)

table=formatdisplay(filename); % Function formatdisplay
% Function takes input from filename and outputs table of top ten native, floating point
% and normalised variables.
% Type 'help formatdisplay' in the command window for more information.
disp(table)   % Display table in command window

% Type 'help formatdisplay' in the command window for more information.


%% 4. Create an FFT based spectrum diagram of the signal (Figure 2) with correct units on both y-axis and x-axis.

figure(2);                          
Figure2= fftsig(sig,fs,'Linear');   % Function fftsig
% Function produces a fast fourier transform plot of the input signal.
% Displaying decibels on the y axis, and frequency in KHz on x axis.
% Function also has the choice between 'linear' and 'Log' scaling.

% Type 'help formatdisplay' in the command window for more information.


%% Part 5- Design and apply a digital filter to remove the background noise of the signal.

FO = 200;       % Order of Filter
PB1= 4500;      % Pass Band 
SB1 = 5500;     % Stop Band of Filter
SB2 = 14000;    % End of stop band
PB2= 15000;     % Continuation of Pass Band

filtered= stopbandfilter( sig, fs, FO, PB1, SB1,SB2,PB2); % Function stopbandfilter
% Function creates filter design based on input variables, and outputs the
% input signal as a variable 'filtered'

% Type 'help stopbandfilter' to find out more


%% Part 6- Create STFT graph for both filtered signal and unfiltered signal.

% Input variables
window  = 300;              % Adjustable window size for both graphs
overlap =20;                % Overlap between windows.
TitleA = 'Filtered Signal'; % Title for First Signal
TitleB = 'Original Signal'; % Title for Second Signal
figure(3)
specto= subspecto(filtered,sig,TitleA,TitleB, fs, fs, window, overlap); % Function subspecto
% Function displays a subplot  spectrogram of two audio signals.
% Using the function Spectrogram to perform a STFT spectrogram of the two audio signals.

% Type 'help subspecto' for more information about function




