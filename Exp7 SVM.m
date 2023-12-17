%%Experiment No. 6
% Arjun Thakur ENTC A
% 17070123023 (G1)
X=[0 0; 0 1; 1 0; 1 1];
Y=[0; 1; 1; 0];
Mdl=fitcsvm(X,Y,'KernelFunction','rbf');
sv=Mdl.SupportVectors;
figure
gscatter(X(:,1),X(:,2),Y);
hold on
plot(sv(:,1),sv(:,2),'ko','MarkerSize',10);
hold off
