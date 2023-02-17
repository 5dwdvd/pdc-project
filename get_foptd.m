function [k_p, tau, T_d, vmax, dmax, tmax] =  get_foptd(value, derivative, step_time, step)
% Filter spikes in derivative
medfilt_data = medfilt1(derivative.Data);
% Find the maximum gradient (point of inflection)
[dmax_abs, index] = max(abs(medfilt_data));
% Get the gradient, time, and value from the location
dmax = medfilt_data(index);
tmax = derivative.Time(index);
vmax = value.Data(index);
% Get the t values from the steady state values
ss1_intercept = get_time(value.Data(1), vmax, dmax, tmax);
ss2_intercept = get_time(value.Data(end), vmax, dmax, tmax);
% Get the time constant
tau = ss2_intercept-ss1_intercept;
% Get system gain
k_p = (value.Data(end)-value.Data(1))/(step);
% Get time delay
T_d = ss1_intercept-step_time;
end

function time = get_time(y, vmax, dmax, tmax)
    % Given value, gradient, and time,
    % use the inverse of y = gradient(x - time) value 
    time = (y-vmax)/dmax+tmax;
end
