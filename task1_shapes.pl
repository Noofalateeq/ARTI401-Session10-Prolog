% ===== TASK 1 - AREA AND PERIMETER =====

% Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle
triangle(Base, Height, SideB, SideC, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is Base + SideB + SideC.
	
% ==========================================
% TASK 1 - TEST QUERIES AND RESULTS
% ==========================================

% 101 ?- consult(['c:/Users/snoof/OneDrive/Desktop/لاب 10 Ai/task1_shapes.pl']).
% true.

% 102 ?- square(5, Area, Perimeter).
% Area = 25,
% Perimeter = 20.

% 103 ?- rectangle(4, 6, Area, Perimeter).
% Area = 24,
% Perimeter = 20.

% 104 ?- triangle(3, 4, 4, 5, Area, Perimeter).
% Area = 6.0,
% Perimeter = 12.