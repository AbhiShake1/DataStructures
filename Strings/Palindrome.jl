function isPalindrome(str::String)::Bool
    return str==str[end:-1:1] #reverse with string slicing. read from end to start index, keep decrementing index by 1
end

#tests
if abspath(PROGRAM_FILE) == @__FILE__
    startTime = time()
   palindromes = ["aa","  ","a","madam","11"] 
   nonPalindromes = ["ab", "a ","car","12"]
   for p in palindromes, n in nonPalindromes
    @assert isPalindrome(p) #no crash. tests passed
    @assert !isPalindrome(n) #no crash. tests passed
   end
    endTime=time() 
   print("Completed in $(endTime-startTime)")
end