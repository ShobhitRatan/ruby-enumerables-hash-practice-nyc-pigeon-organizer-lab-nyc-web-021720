def nyc_pigeon_organizer(data)
  # write your code here!
  n_h = {} # new hash
  array = []
  p_m = data[:gender][:male] #male pigeon
  p_f = data[:gender][:female] #female pigeon
  n = 0
  while n < p_m.length do
    array.append(p_m[n])
    n += 1
  end
  n = 0
  while x < p_f.length do
    array.append(p_f[n])
    n += 1
  end
  array.each {|n| n_h[n] = {
    :color => [],
    :gender => [],
    :lives => []
    }}
  # puts n_h
  # n_h
  n_h.each do |hash_name, hash_name_hash|
    hash_name_hash.each do |new_inner_hash_key, new_hash_inner_array|
      data.each do |data_key_hash_1, data_hash_inner_hash|
        data_hash_inner_hash.each do |data_hoh_key, data_hoh_name_array|
          data_hoh_name_array.each do |name|
            hash_name_str = hash_name.to_s
            if name == hash_name_str && data_key_hash_1 == new_inner_hash_key
              attribute = data_hoh_key.to_s
              new_hash_inner_array.append(attribute)
              puts new_hash_inner_array
            end
          end
        end
      end
    end
  end
  puts n_h
  n_h
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# puts pigeon_data [:gender][:male][0]
# puts pigeon_data [:gender][:female][0]
nyc_pigeon_organizer(pigeon_data)
