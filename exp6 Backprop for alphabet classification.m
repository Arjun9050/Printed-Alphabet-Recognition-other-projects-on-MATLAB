clc;
clear all;
close all;
X = transpose(csvread('Prml_exp5(X).csv')); %Input 24 features of A
t = transpose(csvread('Prml_exp5(Y).csv')); %Alphabet a and b character as target
net = feedforwardnet(2,'traingd'); % 3 defines the input out and hidden layer
net.trainParam.show =50;
net.trainParam.lr = 0.05;
net.trainParam.epochs = 300;
net.trainParam.goal = 1e-5;
[net,tr] = train(net,X,t); %Training the network
view(net)
y = net(X);
testX = X(:,tr.testInd); % testing the network
testT = t(:,tr.testInd);
testY = net(testX);
YPredicted = net(X);
YPredicted(:,1:10)
figure(3)
plotconfusion(t,YPredicted)% plot the network training data
figure(4)
plotperform(tr)
figure(5)
plottrainstate(tr)
