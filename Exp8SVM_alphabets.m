clc;
clear all;
rng(6,'twister')
D = dir('C:\Users\arjun\Documents\MATLAB\png\*.png');
nfiles = length(D); %calculating the length of the dataset
for i = 1:nfiles
    cfilename = D(i).name;
    cimg = imread(cfilename);
    I = imresize(cimg, [42 32]); %resizing the 'i'th image in the dataset to 42x32 pixels
    threshold = graythresh(I); % calculating the threshold value for digitizing each image
    I = imbinarize(I,threshold); %quatizing each image using the calculated threshold value
    I = reshape(I,7,8,24); %reshaping the image to 24 boxes(features) with 7x8 pixels for each feature
    I = mean(mean(I)); %calculating the mean for each featutre; mean(I) calculates the mean for 7x8 pixels for 24 boxes/features and mean(mean(I)) calculates the mean for values per box/feature
    X(i,:)=I(:); %storing the 24 feature values of the image in the dataset matrix;
end
y= importdata('label.exp7.xlsx');
rng default
SVMModel = fitcsvm(X,y,'Standardize',true,'KernelFunction','RBF','OptimizeHyperparameters','auto',...
    'HyperparameterOptimizationOptions',struct('AcquisitionFunctionName',...
    'expected-improvement-plus'))