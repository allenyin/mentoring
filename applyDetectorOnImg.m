function applyDetectorOnImg(detector, imgName, featureName)
    
    % Read a test image with file name as 'image1.jpg' for example
    img = imread(imgName);

    % Detect a male face and create bounding box
    bbox = step(detector, img);

    % Insert bounding box and return marked image
    detectedImg = insertObjectAnnotation(img, 'rectangle', bbox, featureName);

    % Display the detected feature
    figure;
    imshow(detectedImg);
end


