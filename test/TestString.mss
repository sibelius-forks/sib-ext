function TestStringTrim(assert, plugin) {
  //$module(TestString.mss)

  empty = '';
  s = plugin.Trim(empty);
  assert.Equal(s, empty, 'Trimming an empty string gives an empty string');

  spaces = '     ';
  s = plugin.Trim(spaces);
  assert.Equal(s, empty, 'Trimming a string full of spaces gives an empty string');

  pad = '   hello';
  s = plugin.Trim(pad);
  assert.Equal(s, 'hello', 'Correctly trims leading spaces');

  pad = 'world        ';
  s = plugin.Trim(pad);
  assert.Equal(s, 'world', 'Correctly trims trailing spaces');

  pad = '   hello     world        ';
  s = plugin.Trim(pad);
  assert.Equal(s, 'hello     world', 'Correctly trims leading and trailing spaces');

} //$end

function TestStringOf(assert, plugin) {
  //$module(TestString.mss)

  s = plugin.StringOf('*', 0);
  assert.Equal(s, '', 'StringOf num 0 returns empty string');

  s = plugin.StringOf('*', 1);
  assert.Equal(s, '*', 'StringOf num 1 returns correct string');

  s = plugin.StringOf('*', 10);
  assert.Equal(s, '**********', 'StringOf num 1 returns correct string');

  s = plugin.StringOf('!*', 10);
  assert.Equal(s, '!!!!!!!!!!', 'StringOf uses the first char of passed argument');

} //$end


function TestStringPadLeft(assert, plugin) {
  data = 'hello';
  s = plugin.PadLeft(data, 4);
  assert.Equal(s, data, 'Padding to less than the length of the string has no effect');

  s = plugin.PadLeft(data, 5);
  assert.Equal(s, data, 'Padding to the length of the string has no effect');

  s = plugin.PadLeft(data, 10);
  assert.Equal(s, '     hello', 'Correctly pads the left of the string');
} //$end

function TestStringPadLeftC(assert, plugin) {
  data = 'hello';
  s = plugin.PadLeftC(data, 4, '*');
  assert.Equal(s, data, 'Padding to less than the length of the string has no effect');

  s = plugin.PadLeftC(data, 5, '*');
  assert.Equal(s, data, 'Padding to the length of the string has no effect');

  s = plugin.PadLeftC(data, 10, '*');
  assert.Equal(s, '*****hello', 'Correctly pads the left of the string');
} //$end


function TestStringPadRight(assert, plugin) {
  data = 'hello';
  s = plugin.PadRight(data, 4);
  assert.Equal(s, data, 'Padding to less than the length of the string has no effect');

  s = plugin.PadRight(data, 5);
  assert.Equal(s, data, 'Padding to the length of the string has no effect');

  s = plugin.PadRight(data, 10);
  assert.Equal(s, 'hello     ', 'Correctly pads the right of the string');
} //$end

function TestStringPadRightC(assert, plugin) {
  data = 'hello';
  s = plugin.PadRightC(data, 4, '*');
  assert.Equal(s, data, 'Padding to less than the length of the string has no effect');

  s = plugin.PadRightC(data, 5, '*');
  assert.Equal(s, data, 'Padding to the length of the string has no effect');

  s = plugin.PadRightC(data, 10, '*');
  assert.Equal(s, 'hello*****', 'Correctly pads the right of the string');
} //$end

function TestStringCenter(assert, plugin) {
  data = 'hello';
  s = plugin.Center(data, 4);
  assert.Equal(s, data, 'Centering to less than the length of the string has no effect');

  s = plugin.Center(data, 5);
  assert.Equal(s, data, 'Centering to the length of the string has no effect');

  s = plugin.Center(data, 10);
  assert.Equal(s, '  hello   ', 'Correctly centers the string');

  s = plugin.Center(data & '!', 10);
  assert.Equal(s, '  hello!  ', 'Correctly centers the string');
} //$end

function TestStringCenterC(assert, plugin) {
  data = 'hello';
  s = plugin.CenterC(data, 4, '*');
  assert.Equal(s, data, 'Centering to less than the length of the string has no effect');

  s = plugin.CenterC(data, 5, '*');
  assert.Equal(s, data, 'Centering to the length of the string has no effect');

  s = plugin.CenterC(data, 10,'*');
  assert.Equal(s, '**hello***', 'Correctly centers the string');

  s = plugin.CenterC(data & '!', 10, '*');
  assert.Equal(s, '**hello!**', 'Correctly centers the string');
} //$end





