/* main.vala
 *
 * Copyright 2021 Camden Mac Leod
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE X CONSORTIUM BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Except as contained in this notice, the name(s) of the above copyright
 * holders shall not be used in advertising or otherwise to promote the sale,
 * use or other dealings in this Software without prior written
 * authorization.
 */

int main (string[] args) {
	int charLength = 0;
	if (args[1] != null) {
		charLength = int.parse(args[1]);
	}

	string[] letters = {
		"a", "b", "c", "d", "e", "f", "g", "h",
    	"i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w",
    	"x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B",
    	"C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q",
    	"R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "$",
    	"%", "^", "&", "*", "(", ")", "-", "_", "+", "=", "[", "{", "}", "]", ";",
    	":", "'", "\"", "<", ",", ">", ".", "/", "?"
	};

	string result = "";

	for (int i = 0; i < charLength; i++) {
		uint32 random = Random.next_int() % letters.length + 1;
		result += letters[int.parse(random.to_string())];
	}

	print(result + "\n");
	return 0;
}
