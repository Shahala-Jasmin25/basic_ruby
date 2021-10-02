#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology

def bubble_sort(arr)
    n = arr.length
    loop do
        swap = false
        (n-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swap = true
            end
        end
        break if swap == false
    end
    arr
end 

bubble_sort([4,3,78,2,0,2])
