class Main03b
    def self.check_slope mod_x, mod_y
        trees = 0
        x=0
        y=0
        File.open( "./03/input.txt").each do |line|
            if y % mod_y == 0
                trees += 1 if line[x%31] == '#'
                x += mod_x         
            end
            y += 1
        end
        trees
    end
    def self.run
        slopes =[[1,1],[3,1],[5,1],[7,1],[1,2]]
        trees = 1
        slopes.each do |slope|
            trees *= check_slope slope[0],slope[1]
        end
        trees
    end
end