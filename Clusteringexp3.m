clc; clear all; close all;
K = csvread('CSV_Features_24.csv');
bnew = zeros(150,24);

bnew(1:50,:) = K(1:50,:);
bnew(51:100,:) = K(51:100,:);
bnew(101:150,:) = K(101:150,:);

[cidx3,cmeans3] = kmeans(bnew,3,'replicates',15,'display','final');
figure('Name','K-Means Silhoutte')
[silh3,h] = silhouette(bnew,cidx3,'sqeuclidean');