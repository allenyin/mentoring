%% The current code will train a classifier for recognizing male faces.
%  Uses female face pictures for negative examples.

positiveExample = 'male.mat';   % for example, include male face
load(positiveExample);          % this will load a variable called 'data', or whatever you have saved into workspace.

% add the image location to MATLAB path
imDir = 'enter/your/path/to/positiveExample';
addpath(imDir);

% Specify the folder for negative images
negativeFolder = 'enter/your/path/to/femaleFaces';

% Train a 5-stage cascade object detector called 'maleFaceDetector.xml' using HOG featuress
trainCascadeObjectDetector('maleFaceDetector.xml', data, negativeFolder, 'FalseAlarmRate', 0.2, 'TruePositiveRate', 0.9, 'NumCascadeStages', 5);

% remove the imDir from path
rmpath(imDir);
