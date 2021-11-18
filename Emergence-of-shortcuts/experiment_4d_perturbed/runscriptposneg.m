%% load('datadegree')
load('degreetrain01targets.txt');
load('degreetrain10targets.txt');

%%
[t01, t10, k01cal,k10cal,summat01,summat10]=multidegree_entropy_pos_neg(degreetrain01targets, degreetrain10targets);

%%
figure,

hold on
plot(degreetrain01targets, k01cal, 'o')
hold on
plot(degreetrain10targets, k10cal, 'o')

xlabel('real degree')
ylabel('predicted degree')


%%
writematrix(summat10,'C:\Users\Ayan\Documents\GitHub\AI-Bind\Emergence-of-shortcuts\experiment_4d_perturbed\summat10.csv')
writematrix(summat01,'C:\Users\Ayan\Documents\GitHub\AI-Bind\Emergence-of-shortcuts\experiment_4d_perturbed\summat01.csv')