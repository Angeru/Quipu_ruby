trees = 0
x=0
File.open( "input.txt").each do |line|
    trees += 1 if line[x%31] == '#'
    x += 3
end
puts trees
