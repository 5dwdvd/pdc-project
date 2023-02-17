function [pv_ethanolconc, pv_biotemp, pv_ethanolconc_derivative, pv_biotemp_derivative] = extract_ts(simulate, mini, maxi)
% Get timeseries data structures for values and derivatives
pv_ethanolconc = simulate.ScopeData{1}.Values;
pv_biotemp = simulate.ScopeData{2}.Values;
pv_ethanolconc_derivative = simulate.ScopeData{3}.Values;
pv_biotemp_derivative = simulate.ScopeData{4}.Values;

% Limit timeseries to mini and maxi
pv_ethanolconc = getsampleusingtime(pv_ethanolconc, mini, maxi);
pv_biotemp = getsampleusingtime(pv_biotemp, mini, maxi);
pv_ethanolconc_derivative = getsampleusingtime(pv_ethanolconc_derivative, mini, maxi);
pv_biotemp_derivative = getsampleusingtime(pv_biotemp_derivative, mini, maxi);
end