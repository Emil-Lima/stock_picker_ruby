def stock_picker(arr)
    arr_copy = arr
    value_holder = 0
    best_days = [0,0]
    arr.map do |element|
        arr_copy.map do |second_element|
            if arr.index(element) < arr_copy.index(second_element)
                if (element < second_element)
                    if (second_element - element > value_holder)
                        value_holder = second_element - element
                        best_days.pop(2)
                        best_days.push(arr.index(element), arr_copy.index(second_element))
                    end
                end
            end
        end
    end
    if best_days == [0,0]
        return "Do noy buyyyyyyyy!!"
    end
    best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
