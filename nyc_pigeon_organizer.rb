def nyc_pigeon_organizer(data)
  # write your code here!
  n_h = {} # new hash
  data.each_pair do |attributes, i_h| #i_h = inner hash
    i_h.each_pair do |i_a, name| #i_a = inner attribute
      names.each{|name|}
        if !n_h[name]
          n_h[name] = {}
        end
        if data[attributes][i_a].include?(name)
          if !n_h[name][attributes]
            n_h[name][attributes] = []
          end
          n_h[name][attributes].push(i_a.to_s)
        end
    end
  end
  n_h
end
