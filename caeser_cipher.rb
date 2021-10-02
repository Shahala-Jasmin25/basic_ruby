#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(str, num)
    str1 = str.chars
    caeser_str =[]
    str1.map do |s|
        current = s.ord
        if current.between?(65,90)
            current += num % 26 
            current =- 25 if current > 90
            caeser_str << current.chr
        elsif current.between?(97,122)
            current += num %26
            current -= 25 if current > 122
            caeser_str << current.chr
        else
            caeser_str << s
        end
    end
    puts caeser_str.join
end

caesar_cipher("CoCo_LiZo es el mejor", 180)
caesar_cipher("What a string!", 5)
caesar_cipher("AmAm_JgXm cq cj kchmp", -180)
caesar_cipher("Bmfy f xywnsl!", -5)