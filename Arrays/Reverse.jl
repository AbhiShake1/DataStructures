#implementation
function reverseArr(lst::Vector)::Nothing #void return type
    startIndex::Int=1 #unsigned int 
    endIndex::Int=length(lst)
    while(startIndex<endIndex)
        lst[startIndex], lst[endIndex] = lst[endIndex], lst[startIndex]
        startIndex+=1
        endIndex-=1
    end
end

#tests
if abspath(PROGRAM_FILE) == @__FILE__ #only execute bellow block from this file. __name__=="__main__" in py
    startTime = time()

    lst = [[0,1,2,3],[1,1,2,1],[true,false,"True","False"],["a",1.0,true],[1],collect(1:100)]
    lst1=lst #creating a copy to compare later since lists are mutable


    #reverse rows
    reverseArr(lst)
    reverse(lst1)

    #reverse columns
    for i=1:length(lst) 
        #only i because same length of both arrays
        #for each not possible since actual arrays data have to be changed
        reverseArr(lst[i])
        reverse(lst1[i])
    end

    @assert lst==lst1 #no asssertion error. test passed

    endTime=time()
    print("Completed in $(endTime-startTime)") #total execution time taken
end
