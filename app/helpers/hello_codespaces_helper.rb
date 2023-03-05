module HelloCodespacesHelper
    def divide_array(array, num_groups)
      result = []
      group_size = array.size / num_groups
      remainder = array.size % num_groups
      start_index = 0
  
      num_groups.times do |i|
        group = []
        group_size.times do |j|
          group << array[start_index + j*num_groups]
        end
  
        group << array[start_index + group_size*num_groups] if i < remainder
  
        result << group
        start_index += 1
      end
  
      result
    end
  end
  