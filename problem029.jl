
# How many distinct terms are in the sequence generated by 
# a^b for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100?
function p029(N)
    A = zeros(BigInt, N-1, N-1)
    for a = 2:N
        for b = 2:N
            A[a-1, b-1] = BigInt(a)^b
        end
    end
    result = length(unique(A))
    println("Distinct terms: $result")
end

@time p029(100)