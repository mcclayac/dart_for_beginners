


int? getLength(String? str) {
  // Add null check here

  return str?.length;
}

int getLength2(String? str) {
  if (str == null) throw("'str' is null.");
    throw("'str' is null."); // Add null check here
    return str!.length;
}

void main() {


  String? aNullableString;
  String? aNullableString2;

  aNullableString = null;
  print(aNullableString ?? 'alternate');

  aNullableString = null;
  print(aNullableString != null ? aNullableString : 'alternate');

  aNullableString2 = null;
  aNullableString2 ??= 'alternate';
  print(aNullableString2);

  aNullableString2 = null;
  aNullableString2 = aNullableString2 != null ? aNullableString2 : 'alternate2';
  print(aNullableString2);

  String text;

  if (DateTime.now().hour < 12) {
   text = "It's morning! Let's make aloo paratha!";
  } else {
   text = "It's afternoon! Let's make biryani!";
  }

  print(text);
  print(text.length);

  try {
    print('the function call getLegth = ${getLength('This is a string!')} .');
    print('the function call getLegth = ${getLength2('This is a string!2')} .');
    print('the function call getLegth = ${getLength2(null)} .');
  } on Exception catch (e) {
    print(e);
  }

}