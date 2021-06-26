function sort(str)::Vector #convert string to vector and sort it
    return sort!(split(str, ""))
end

function isAnagram(str1::String, str2::String)::Bool
    if length(str1) != length(str2)
        return false
    end

    str1 =sort(str1)
    str2=sort(str2)
    
    for i=1:length(str1)
        if str1[i] != str2[i]
            return false
        end
    end
    return true
end

#tests
if abspath(PROGRAM_FILE) == @__FILE__
    startTime = time()
    anagrams = [["aba","baa"],["1a1","11a"],["a  ","  a"]]
    notAnagrams = [["aba","bba"],["11","12"]]
    for a::Vector{String} in anagrams, n::Vector{String} in notAnagrams
        @assert isAnagram(a[1],a[2]) and !isAnagram(n[1],n[2]) #no error. tests successful
    end
    endTime=time() 
    print("Completed in $(endTime-startTime)")
end