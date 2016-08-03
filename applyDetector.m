%% The current code will use the maleFaceDetector on one of your test image.

maleFaceDetector = vision.CascadeObjectDetector('maleFaceDetector.xml');

% Add your test image location to MATLAB path
imDir = 'enter/your/path/to/testImages';
%addPath(imDir);

% apply the detector on a test image in your imDir named 'image1', for example

s = dir(imDir);
for i = 3:numel(s)
    imgName = s(i).name;
    applyDetectorOnImg(maleFaceDetector, imgName, 'male face');
    w = waitforbuttonpress;
    close all;
end
