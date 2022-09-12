clear;
format long;

load("preprocessed_data.mat");

wei=entropy_weight(an);

w_an=an*wei';

score=[(1:size(w_an,1))',w_an];

score_sorted=sortrows(score,2,"descend");

save("score_sorted.mat","score_sorted");
