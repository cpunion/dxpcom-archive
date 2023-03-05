/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISample.idl
 */

module mozilla.dxpcom.nsISampleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISample;


public import mozilla.dxpcom.nsISampleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISample */
/**
 * The uuid is a unique number identifying the interface normally
 * called IID. It can be generated as follows:
 *
 * Windows: guidgen.exe
 * Unix: uuidgen which comes with e2fsprogs package
 * Mac: ???
 * All platform: Using irc, connect to irc.mozilla.org and type in
 *				/join #mozilla
 *				/msg mozbot uuid
 *
 */
class nsISampleD : public nsISupportsD {

  static const nsIID IID = NS_ISAMPLE_IID;


  alias nsISample InnerType;

  this(nsISample intr){
    super(intr);
    this.inner = intr;
  }

  nsISample opCast() {
    return inner;
  }

  void opAssign(nsISample value) {
    inner = value;
  }

  /* attribute string value; */
  char* Value(){
    char* value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }
  void Value(char* aValue){
    nsresult __result = inner.SetValue(aValue);
    CheckException(__result);
  }

  /* void writeValue (in string aPrefix); */
  void WriteValue(char*aPrefix){
    nsresult __result = inner.WriteValue(aPrefix);
    CheckException(__result);
  }

  /* void poke (in string aValue); */
  void Poke(char*aValue){
    nsresult __result = inner.Poke(aValue);
    CheckException(__result);
  }

private:
  nsISample inner;

}

