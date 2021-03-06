function Run() {
  suite = Test.Suite('Ext tests', Self, Ext);

  suite
    .Add('TestArrayInsert')
    .Add('TestArrayRemove')
    .Add('TestArrayShift')
    .Add('TestArrayUnshift')
    .Add('TestArrayPluck')

    .Add('TestStringTrim')
    .Add('TestStringOf')
    .Add('TestStringPadLeft')
    .Add('TestStringPadLeftC')
    .Add('TestStringPadRight')
    .Add('TestStringPadRightC')
    .Add('TestStringCenter')
    .Add('TestStringCenterC')

    .Add('TestArrayMap')
    .Add('TestArrayMap1')
    .Add('TestArrayMapU')
    .Add('TestArrayMap1U')
    .Add('TestArrayReduce')
    .Add('TestArrayFilter')
    ;

  suite.Run();
}  //$end
