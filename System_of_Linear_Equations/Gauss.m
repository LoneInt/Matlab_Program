function [out_matrix] = Gauss(A) % A is matrix.
    [rows, ~] = size(A);
    for i = 1 : rows
        if A(i, i) ~= 0
            for j = i + 1 : rows
                cur_k = (-1) * A(j, i) / A(i, i);
                tmp = A(j, :) + A(i, :) * cur_k;
                A(j , :) = tmp;

            end
        end
        A
    end



out_matrix = A;

end

