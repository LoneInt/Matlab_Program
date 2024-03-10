function [max_idx] = FindMax(l, A) %"l" is the starting line, and A is matrix.
    %UNTITLED5 此处提供此函数的摘要
    %   此处提供详细说明
    max_a = A(l,l);
    max_l = l;
    [rows, ~] = size(A);
    for i = l : rows
        temp_line = A(i, :);
        if max_a < temp_line(l)
            max_a = temp_line(l);
            max_l = i;
        end
    end
max_idx = max_l;
%disp("This is the end!")
end