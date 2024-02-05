def bubble_sort(array)
  sorted = false #array is unsorted to begin with
    until sorted #this will keep going until this is true
        sorted = true
        (array.length - 1).times do |i| # worse case passthrough attempts = n-1
        if array[i] > array[i + 1]
          array[i], array[i+1] = array[i+1], array[i]
            sorted = false #set to false at end to continue the loop

        end
      end
    end
    print array #print here since it is outside of the loop.
  end


array = [4,3,78,2,0,2, 4, 5, 6, 7, 8]

bubble_sort(array)
