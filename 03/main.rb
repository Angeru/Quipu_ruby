class Main03a

    def self.run
        trees = 0
        x=0
        File.open( "./03/input.txt").each do |line|
            trees += 1 if line[x%31] == '#'
            x += 3
        end
        trees
    end
end
