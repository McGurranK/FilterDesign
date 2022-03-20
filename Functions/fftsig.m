function [graph]= fftsig(sig,fs, Scaling)
 
%                       **** What does fftsig do? ****
%
%   **** fftsig has three steps:
%        * Takes audio from input variables (aka, sig and fs)
%        * uses the audio data and sampling frequency to produce an FFT of the
%          signal
%        * This is then displayed in a graph plot with the y axis set to
%          magnitude and x axis set for the frequency of the file.
%
%                      **** What is a Fast Fourier Transform? ****
%        * Fast Fourier Transform- Alogithm to compute Discrete Fourier
%          Transform, or to transform time domain audio data into a
%          frequency domain plot.
%
%   **** Inputs needed for function ****
%        * sig  - sampled data from an audio file
%        * fs   - Sampling frequency
%        * Scaling - determines if linear or logarithmic scaling.
%          Input as 'Log' or 'linear'(Can be upper or lowercase)
%
%   **** Outputs of this function ****
%        * Graph - fft graph of input audio signal 
%
%   **** Using function
%        * Name input for sample data and frequency from audio 
%        * Name output, this will be the name the graph is saved as on
%          workspace
%        
%          NOTE- If functions output is not given a name it will still work, and
%                display graph, but will save as an unnamed variable.
%
%   **** Example
%        * 'Figure2= fftsig(sig,fs,'Log');'    *** Log Scaling
%        * 'Figure2= fftsig(sig,fs,'Linear');' *** Linear Scaling

 len = length(sig);      % len calculates the length of the signal, using the length function
 SSC = fft(sig);         % FFT of input audio data
 SSR = abs(SSC)./len;    % Absolute Value from SSC divided by length of sampled data
 L=round(len/2);         % Round to the nearest digit length of signal divided by two
 Mag = mag2db(SSR);      % Convert Magnitude to Decibels
 f = (fs/2)*(0:L)/L;     % X axis Frequency points.
 graph= plot(f,Mag(1:L+1)); % Plot Frequency(X), against Decibels (Y)
 title('Figure 2')          % Title of graph
 
 % Labelling the axis's of the graph output from the function
 xlabel('Frequency KHz')            % X axis Label
 ylabel('Decibels')                 % Y Axis Label
 
 % If Statement for picking logarithmic scaling or Linear
 if strcmpi(Scaling,'Log')     % If variable Scaling and text 'Log' same Logarithmic Scaling
   set(gca, 'XScale', 'log')   % Set Graph axis scaling to Logarithmic
   xlim([20 20000]);           % Limit Access 20Hz - 20000Hz
   set(gca,'XTick',[20 50 100 200 500 1000 2000 5000 10000 20000]); 
   % Set X Axis labels at these points
   set(gca,'XTicklabel',{'0.02', '0.05', '0.1','0.2','0.5','1','2','5','10','20'});
   % Change Labeling to Khz for cleaning axis display
   
 elseif strcmpi(Scaling,'Linear') % If Variable Sacling and Text'Linear' same Linear Scaling
   xlim([0 20000]);               % Limit X Axis from 0Hz-20000Hz
   set(gca, 'XScale', 'linear')   % Set Linear X axis
   set(gca,'XTick',0:2000:20000); % 0 to 20000 with x label points every 2000
   set(gca,'XTicklabel',0:2:20);  % Adjusting Labeling to Khz.
 
 end
 
 
end