# frozen_string_literal: true

def stock_picker(arr)
  value_holder = 0
  best_days = [0, 0]
  last_element = arr.length - 1
  while value_holder < last_element
    if arr[value_holder + 1..last_element].max - arr[value_holder] > best_days[1] - best_days[0]
      best_days = [arr[value_holder], arr[value_holder + 1..last_element].max]
    end
    value_holder += 1
  end
  return 'No good options' if best_days == [0, 0]

  final = []
  arr.each_with_index do |ele, index|
    if ele == best_days[0]
      final.push(index)
      best_days.shift
    end
  end
  final
end
