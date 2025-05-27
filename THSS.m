clc; clear; close all;

% Step 1: Load and preprocess the image
img = imread('tomato_crop.jpg');
img = imresize(img, [512 512]);
figure, imshow(img); title('Original Tomato Crop Image');

% Step 2: Convert to HSV and threshold red color for tomatoes
hsvImg = rgb2hsv(img);
H = hsvImg(:,:,1);
S = hsvImg(:,:,2);
V = hsvImg(:,:,3);

% Tomato color segmentation 
tomatoMask = (H < 0.05 | H > 0.95) & S > 0.4 & V > 0.3;

% Step 3: Morphological processing to clean up the mask
tomatoMask = imfill(tomatoMask, 'holes');
tomatoMask = bwareaopen(tomatoMask, 300); % Remove small noise
tomatoMask = imclose(tomatoMask, strel('disk', 5));

figure, imshow(tomatoMask); title('Detected Tomatoes');

% Step 4: Label and measure tomato regions
stats = regionprops(tomatoMask, 'Area', 'Centroid', 'BoundingBox');
labeled = bwlabel(tomatoMask);
RGB_label = label2rgb(labeled, 'spring', 'k', 'shuffle');

figure, imshow(RGB_label); title('Labeled Tomatoes');

% Step 5: Classify tomatoes based on area
hold on;
for i = 1:length(stats)
    area = stats(i).Area;
    centroid = stats(i).Centroid;
    box = stats(i).BoundingBox;

    % Size classification based on area
    if area < 1000
        sizeLabel = 'Small';
        color = 'b';
    elseif area >= 1000 && area < 3000
        sizeLabel = 'Medium';
        color = 'g';
    else
        sizeLabel = 'Large';
        color = 'r';
    end

    % Draw bounding box and label
    rectangle('Position', box, 'EdgeColor', color, 'LineWidth', 2);
    text(centroid(1), centroid(2), sizeLabel, 'Color', 'w', ...
        'FontWeight', 'bold', 'FontSize', 10);
end
hold off;
