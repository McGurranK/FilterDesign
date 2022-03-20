function [sig,fs, Figure1]= audiodisplay(filename,heading)

%                         ***** What is audiodisplay? *******
%
%       **** audiodisplay  is used to read an audio file, and output three things:
%            * Sampled data from file as a variable (sig)
%            * Sampling frequency of the audiofile into a variable(fs)
%            * Time domain plot of the audiofile with the Axis in seconds to 
%              the length of the audio file.
%
%       **** Input needed for Function ****
%            * Filename - Name of the audiofile.
%              (Can be input as 'task1sig.wav' or used with a variable)
%            * Heading  - User input for the plots title.
% 
%       **** Output from the function ****
%            * Sig      -  Sampled data from audio file as variable 
%            * fs       -  Sampling frequency of the audio file
%            * Figure1  -  Graph of the audio in a time domain plot 
%
%
%        **** Using Function *****
%            * Set Variable names for outputs, and input.
%            * At minimum set two outputs, or three to save graph.
%            * If only two are set only the sig and fs outputs will
%              be saved to ur workspace as whatever variables you have
%              named them.
%
% **** NOTE- The graph will automatically display if it is or is not saved to the workspace.
%
%      **** Examples
%           * [sig,fs, Figure1]= audiodisplay('task1sig.wav')
%           * [sig,fs, Figure1]= audiodisplay(filename)

%                           ******* Understanding the code *********
% - This is the code with annotation explaining what each function is
%   doing.

% 1. Reading Signal and storing as varible sig, and fs as the sampling frequency
[sig, fs]= audioread(filename); % audioread function used return sampled data, and sampling Frequency.

% 2. Displaying signal in time domain for length of audio, with correct axis

ts= 1/fs;                   % Defining the difference between samples
Duration= length(sig)/fs;   % Duration of signal in seconds
t=0:ts:Duration-ts;         % Creating array in seconds for each sample.
Figure1= plot(t,sig);       % Plot time against the signal values and output as Figure1
title(heading)              % Labeling Heading of graph
xlabel('Time in seconds');  % Giving X axis label
ylabel('Amplitude between -1 and 1');       %Giving Y axis Label

end
