% ========================================================================
% File        : mimo_channel.m
% Project     : physical-layer-security
% Description : Simulates a 3×3 MIMO channel with beamforming weights applied.
%
% Author      : Nikolaos Bermparis
% Institution : University of the Aegean (ICSD)
% Course      : Physical Layer Security
% Year        : 2025
%
% Notes:
%   - Models y = H * (x .* w).
%   - Used for beamforming secrecy simulations.
%
% ========================================================================


function y = mimo_channel(x, H, w)
    % x: Input signal matrix [3xN] (each column a signal from one antenna)
    % H: Channel matrix [3x3]
    % w: Beamforming weight vector [3x1]
    % y: Output signal after passing through the channel [3xN]

    % Apply beamforming weights (element-wise multiplication)
    x_beamformed = x .* w;  % Assuming w is [3x1] and x is [3xN]

    % Pass the beamformed signal through the channel
    y = H * x_beamformed;  % This multiplication should be valid now
end

