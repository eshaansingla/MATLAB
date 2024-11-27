x = [5 7 11 13]; % Known x-values
y = [150 392 1452 2366]; % Corresponding y-values
X = input('Enter the value to be interpolated: '); % Input interpolation point

n = length(x); % Number of data points
l = zeros(1, n); % Initialize Lagrange basis as a row vector

% Compute the Lagrange basis polynomials
for i = 1:n
    x1 = x; % Copy x-values
    x1(i) = []; % Remove the i-th element
    l(i) = prod(X - x1) / prod(x(i) - x1); % Compute Lagrange basis
end

result = 0; % Initialize result
% Compute the interpolated value
for i = 1:n
    result = result + l(i) * y(i); % Accumulate the result
end

disp(result); % Display the interpolated value
