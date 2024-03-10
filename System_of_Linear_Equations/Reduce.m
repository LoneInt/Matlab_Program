function [Eli_A] = Reduce(A) %A is matrix of coefficients.
%UNTITLED3 此处提供此函数的摘要
%   此处提供详细说明
    [rows, ~] = size(A);
    for i = 1 : rows
        cur_idx = FindMax(i, A);
        %Swap lines
        temp = A(cur_idx , :);
        A(cur_idx , :) = A(i , :);
        A(i, :) = temp;
        %
        cur_line = A(i , :);
        disp("-------------");
        
        for j = i + 1 : rows
            if A(i, i) ~= 0
                cur_k =  (-1) * A(j , i) / A(i , i);
                tmp = A(j , :) + (cur_line * cur_k);
                A(j , :) = tmp; 
            end
        end
        A
        
    end

Eli_A = A;
end