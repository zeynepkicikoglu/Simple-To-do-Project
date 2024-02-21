//Motoko

import Map "mo:base/HashMap";
import Text "mo:base/Text";

// actor -> akilli sozlesme

actor {

  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone:Phone;
  };

  //desgiskenler
  //let -> immutable (degismez)
  //var -> mutable(degistirebilir)
  //const -> ...

  let phoneBook = Map.HashMap<Name,Entry>(0,Text.equal,Text.hash);
  //query -> sorgular
  //update -> gelistirme
  //async() -> paralelde yapiliyor

  
  public func insert(name:Name, entry:Entry): async () {
    phoneBook.put(name, entry);

  };

  //loop -> if, when, while, break
// soru isareti ister sayı ister String olsun query icin cevap dondur demek
  public query func lookup(name:Name) : async ? Entry {
    phoneBook.get(name);
  };
};
