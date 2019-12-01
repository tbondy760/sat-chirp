## Convert a string to a row vector with a 1 representing key down for a dit interval.
##
## usage: Keydown = alphaToMorse("SOS")
##
## Keydown =
##
##  Columns 1 through 26:
##
##   1  0  1  0  1  0  1  0  0  0  1  0  1  0  0  0  0  0  0  0  1  0  1  0  1  0
##
##  Columns 27 through 33:
##
##   1  0  0  0  1  0  1
##
function Morse = alphaToMorse(Message)
    source MorseTable.m
    Trinary_for_test = dec2base(arrayfun(@(v) strfind(Morse_char_to_trinary_map, v)(1) - 1, toupper(Message)) .* 9 .+ 3^19, 3);
    Test_marks = ...
    # Do the processing for each character
    arrayfun(@(v) ...
			# Replace '2' with 'aaa0'
			strrep(
				   # Replace '1' with a 'a0'
				   strrep(
						  # Replace leading 1 and zeroes with nothing
						  regexprep(v, "^10{9,16}([12])|^10{15}(0000)$", "$1"),
						  "1", "a0"),
				   "2", "aaa0"),
        cellstr(Trinary_for_test)
    );
    Test_marks_str = char(Test_marks(:,1));
    # Reshape into a row vector, replace blanks with nothing, and all trailing '0' with nothing
    Test_marks_concat = regexprep(strrep(reshape(Test_marks_str', 1, []), " ", ""), "0+$", "");
    Morse = isalpha(Test_marks_concat);
endfunction
