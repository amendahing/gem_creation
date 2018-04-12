require "stringer/version"

module Stringer
    def self.spacify *strings
        string = ""
        strings.each do |s|
            string += " " + s
        end
        return string
    end


    def self.minify(string, num)
        if string.length > num
            split = string.split(//)
            newStr = ""
            $i = 0
            $numz = num - 1
            while $i < $numz do
                newStr+= split[$i]
                $i += 1
            end
            return newStr + "..."
        else
            return string
        end
    end


    def self.replacify(str, word, replacement)
        split = str.split(" ")
        for i in 0...split.length
            if split[i] == word
                split[i] = replacement
            end
        end
        return split.join(" ")
    end

    def self.tokenize(str)
        split = str.split(" ")
        return split
    end


end
