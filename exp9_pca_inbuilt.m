clc; clear all; close all;
load hald
X = pca(ingredients)
plot3(X(:,1),X(:,2),X(:,3),'bo');
grid on;