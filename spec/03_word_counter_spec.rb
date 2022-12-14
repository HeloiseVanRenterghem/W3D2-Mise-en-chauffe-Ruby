require_relative '../lib/03_word_counter'

describe "check_matching_and_calculate_occurence_of_a_word_in_string method" do
    it "should return a hash with the word as the key, and the number of occurence of this word in the string, the value" do
        expect(check_matching_and_calculate_occurence_of_a_word_in_string("Low low BELow, below", "low")).to eq({"low" => 4})
        expect(check_matching_and_calculate_occurence_of_a_word_in_string("Can Canaille cantine chant camping balcan canape", "can")).to eq({"can" => 5})
        expect(check_matching_and_calculate_occurence_of_a_word_in_string("ton tonton tondre tondeuse tortue", "ton")).to eq({"ton" => 5})
    end
end

describe "find_matching_words_and_occurences_in_string method" do
    it "should return an array contening hashes with key = word, and value = number of occurence" do
        expect(find_matching_words_and_occurences_in_string("ZZZZzzzzzzzzzz. CHUT CHUT, je dors", ["z", "chut", "je"])).to eq([{"z" => 14}, {"chut" => 2}, {"je" => 1}])
        expect(find_matching_words_and_occurences_in_string("Tourne tourne les maneges", ["tourne", "tour", "e"])).to eq([{"tourne" => 2}, {"tour" => 2}, {"e" => 5}])
        expect(find_matching_words_and_occurences_in_string("hahaha qu'est ce que tu es drole", ["ha", "qu", "es"])).to eq([{"ha" => 3}, {"qu" => 2}, {"es" => 2}])
    end
end

describe "transform_array_of_hashes_into_hash method" do
    it "should convert an array contening hashes into a hash sorted by value" do
        expect(transform_array_of_hashes_into_hash([{"a" => 3}, {"b" => 67}, {"c" => 44}])).to eq({"a" => 3, "c" => 44, "b" => 67})
        expect(transform_array_of_hashes_into_hash([{"a" => 3}, {"b" => 67}, {"c" => 68}])).to eq({"a" => 3, "b" => 67, "c" => 68})
        expect(transform_array_of_hashes_into_hash([{"a" => 6}, {"b" => 5}, {"c" => 4}])).to eq({"c" => 4, "b" => 5, "a" => 6})
        end
end

describe "word counter method" do
    it "should return an hash of keys = words, values = occurence of a word, in a given string" do
        expect(word_counter("le matin, sur le chemin pour prendre le train, je mange du jambon", ["train", "chemin", "jambon"])).to eq({"chemin" => 1, "jambon" => 1, "train" => 1})
        expect(word_counter("le la les sont des articles definis", ["le", "la", "les"])).to eq({"la" => 1, "le" => 3, "les" => 2})
        expect(word_counter("amis du soir, bonsoir", ["s", "soir", "bonsoir"])).to eq({"s" => 3, "soir" => 2, "bonsoir" => 1})
    end
end