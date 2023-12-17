clc;
close all; 
clear all; 
x = csvread('Arjun _exp9.csv'); 
[pcs,scrs,~,~,pexp] = pca(x);
figure(1);
pareto(pexp)
figure(2);
scatter(scrs(:,1),scrs(:,2))