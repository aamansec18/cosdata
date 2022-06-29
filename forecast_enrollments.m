% TOTAL vector -- amount of students 
TOTAL = [20414, 21071, 21586, 21510, 21356, 22454, 22044, 22345, 22702, 22361, 22922, 23365, 23912, 23637, 23865, 23873, 23674, 24812];

% scatterplot of 16 datapoints -- not correct
%plot(TOTAL, 'o');
% scatterplot -- hold command retains previous graph
hold on
YEAR = 1979:1996; 
plot(YEAR, TOTAL, 'o');

% linear fit of the data
A = polyfit(YEAR, TOTAL, 4);

% get y vector -- values of the linear fit 
Y = polyval(A, YEAR);

% plot the Y vector
plot(YEAR, Y);

hold off
figure()

% predict enrollments for 1995-1996
TOTAL_0 = [20414, 21071, 21586, 21510, 21356, 22454, 22044, 22345, 22702, 22361, 22922, 23365, 23912, 23637, 23865, 23873];
YEAR_0 = 1979:1994; 
hold on 
plot(YEAR_0, TOTAL_0, 'o');

% repeat of above but for prediction
B = polyfit(YEAR_0, TOTAL_0, 1);
Z = polyval(B, YEAR_0);
plot(YEAR_0, Z);


year_95_val = polyval(B, 1995);
year_96_val = polyval(B, 1996);

relative_err_95 = (abs(year_95_val-23674)/23674)*100
relative_err_96 = (abs(year_96_val-23674)/24812)*100


