// Extends and static const
class FirstClass{
int a=16;
String name='My first work';
static const String name1='Do not warning';
void bbb(){print(a);}
}
class SecondClass extends FirstClass with FirstMixin,SecondMixin{
void max(int a,int b){
  if(a>b){print(a);} 
  else {print(b);}}
}

mixin FirstMixin {
   void Texts(){ print('This is Mixin');} }


mixin SecondMixin { 
  void minim(int a,int b){
  if(a>b){print(b);} 
  else {print(a);}
  } }

class Family with FirstMixin,SecondMixin{
  
}

void main() {
   SecondClass object = SecondClass();
   object.minim(3, 5);
 object.Texts();
  object.bbb();
  
  Family object2=Family();
  object2.minim(5,7);
  object2.Texts();
}