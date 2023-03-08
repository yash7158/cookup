

import 'package:cookup/Const.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void getdata1() async {
  final supabase = await SupabaseClient(supabaseUrl,supabaseKey);
  final res = await supabase.from('new').select('name');
  print(res[0]['name']);
}

Future<bool> signup1() async{
  final supabase = await SupabaseClient(supabaseUrl,supabaseKey);
  try {
    final AuthResponse res = await supabase.auth.signUp(
      email: Email,
      password: Password,
    );
    final Session? session = res.session;
    final User? user = res.user;
    return true;
  }catch (e) {
    print(e.toString());
    return false;
  }
}

Future<bool> login1() async{
  final supabase = await SupabaseClient(supabaseUrl,supabaseKey);
  try {
    final AuthResponse res = await supabase.auth.signInWithPassword(
      email: Email,
      password: Password,
    );
    final Session? session = res.session;
    final User? user = res.user;
    return true;
  }catch(error){
    print(error.toString());
    return false;
  }
}

Future<bool> loginG() async{
  final supabase = await SupabaseClient(supabaseUrl,supabaseKey);
try{
  final g1 = await supabase.auth.signInWithOAuth(Provider.google);
  final g2 = await supabase.auth.onAuthStateChange;
  return true;
}catch(e){
  print(e.toString());
  return false;
}



}