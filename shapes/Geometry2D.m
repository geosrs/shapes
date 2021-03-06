classdef Geometry2D < Geometry
%Geometry2D Abstract class for planar geometries
%
%   Class Geometry2D
%
%   Example
%   Geometry2D
%
%   See also
%   Polygon2D, PointSet2D

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2014-08-14,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2013 INRA - Cepia Software Platform.

%% Constructor
methods
    function obj = Geometry2D(varargin)
    % Constructor for Geometry2D class
    %   (will be called by subclasses)

    end

end % end constructors


%% Abstract Methods
% Declares some methods that will be implemented by subclasses.
methods ( Abstract )
    
    box = boundingBox(obj)
    % Returns the bounding box of obj geometry
    
    varargout = draw(obj, varargin)
    % Draw the current geometry, eventually specifying the style
end

%% Abstract Methods
% Not sure we will keep these methods...
methods ( Abstract )
    
    res = scale(obj, varargin)
    % Returns a scaled version of obj geometry
        
    res = translate(obj, varargin)
    % Returns a translated version of obj geometry       
    
    res = rotate(obj, varargin)
    % Returns a rotated version of obj geometry
        
end % end methods

end % end classdef

