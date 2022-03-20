function [Out]= formatdisplay(filename)
%
%         **** What is the formatdisplay function ****
%
%   **** formatdisplay :
%        * Formats audio into native, floating point, and normalised
%          formats
%        * Orders them from highest value to lowest value for each format
%        * Picks top 10 highest values from each
%        * Displays in table with one column for each
%        * Labels each column.
%
%   **** Inputs needed for function ****
%        * Filename- Audios filename
%
%   **** Outputs of this function ****
%        * Out- Table Variable for all three formats.
%
%   **** Using function
%        * Input filename
%          (E.G. 'task1sig.wav' or a variable associated with file)
%        * Give name to output parameter.
%
%       E.G. out = formatdisplay(filename);
%            out = formatdisplay('task1sig.wav')
       
% Below is the code with with descriptions if u want to know how it works.

[native]=audioread(filename,'native');      % Audio file is read into native format
Native_Value=sort(native, 'descend');       % Sort native variable in descending order
Top_Native=Native_Value(1:10);              % Top ten values of native format

%Sorting floating point values and sorting values form highest to lowest
[sig]= audioread(filename);
Floating_Value= sort(sig, 'descend');       % Sorting floating point values
Top_Floating=Floating_Value(1:10);          % First ten values of the array    

%Normalising the signal and sorting values from highest to lowest

Normalised_Values= sig./max(abs((sig)));      % Normalisation function
Sort_Norm= sort(Normalised_Values,'Descend'); % Sort Nomalised 
Top_Norm=Sort_Norm(1:10);                     % Top 10 are selected

t=table(Top_Native, Top_Floating, Top_Norm); % Create three Row Table with top ten of each
t.Properties.VariableNames = {'Native','Floating','Normalised'}; %Name each Row
Out= t; %Display table in command window
end
