/* we use enum to make retriction in our code or clearity in our code
   if we have a company there will be employees if we have software where
   we get all data of empolyee they can type anyting there even haha to prevent
   that we use enums
*/

void main() {
  Empolyee empolyee1 = Empolyee("Tonmoy", EmpolyeeType.swe);
  Empolyee empolyee2 = Empolyee("Robiul", EmpolyeeType.marketing);
  // Empolyee empolyee3 = Empolyee("Nafiz", "Web dev"); this isn't availabel on my company so no can take that

  empolyee1.checkType();
  empolyee2.checkType();
}

enum EmpolyeeType {
  // we delacre a enum like class
  swe,
  finance, // the pposition in my company
  marketing,
}

class Empolyee {
  final String name;
  final EmpolyeeType type; // using our enum varriable

  Empolyee(this.name, this.type);

  void checkType() {
    switch (type) {
      case EmpolyeeType.swe:
        print("Software eng");
        break;
      case EmpolyeeType.finance:
        print("Finance");
        break;
      case EmpolyeeType.marketing:
        print("Marketing");
    }
  }
}
