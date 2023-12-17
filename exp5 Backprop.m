clear all ;
clc;
%% Load data
x=[0 0;0 1;1 0;1 1]'; 
y=[0 1 1 0]';
%% Initialize parameters
desired_error=1e-2;
Learning_Rate=0.5;
hidden_layers=[1];
plotting='yes';
%% Training
net.trainFcn = 'traingd'
[net,tr]=train(net,x,y,desired_error,Learning_Rate,hidden_layers,plotting);
%%%%%%%%%%% prediction
%% Prediction 
[outputs]=predict(net,x);
%%% Illustration
% figure(2)
% plot(x,y,'+-r',x,outputs,'+-b');
% legend('original values','predicted values');
% grid
