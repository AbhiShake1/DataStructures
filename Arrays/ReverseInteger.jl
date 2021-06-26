function reverseInt(i::Int)::Int
    reversed::Int=0
    remainder::Int=0
    while(i>0)
        remainder = i % 10
        i = trunc(i/10) #trunc(1.7)==1, trunc(2.2)==2
        reversed = (reversed * 10) + remainder
    end
    return reversed
end

function main()::Nothing
    ints::Vector{Int} = [1111,123,451] #vector containing ints
    for i in ints
        @assert reverseInt(i)==parse(Int, reverse(string(i))) #no assertion error. tests passed
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end