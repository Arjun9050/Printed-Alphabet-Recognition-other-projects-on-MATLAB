clear all;clc;
Input=[0 0;0 1;1 0;1 1];
y=[0 1 1 1];
Initial_weights=[-1 -1]';
eta=0.7;
weights= Perceptron(Input,y,Initial_weights,eta)

x_test = [1 -1];
y_in = sum(x_test.* weights);
if y_in > 0
    y = 1
else
    y = -1
end