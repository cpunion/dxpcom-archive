/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPhonetic.idl
 */

module mozilla.dxpcom.nsIPhoneticD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPhonetic;


public import mozilla.dxpcom.nsIPhoneticD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPhonetic */
/** 
 * This interface is used to get the phonetic value of the input text.
 * It can be used to get corresponding phonetic value for ideographic text.
 * The interface can be retrieved by calling QI to the interface 
 * which implements the phonetic interface.
 */
class nsIPhoneticD : public nsISupportsD {

  static const nsIID IID = NS_IPHONETIC_IID;


  alias nsIPhonetic InnerType;

  this(nsIPhonetic intr){
    super(intr);
    this.inner = intr;
  }

  nsIPhonetic opCast() {
    return inner;
  }

  void opAssign(nsIPhonetic value) {
    inner = value;
  }

  /**
   * phonetic get the phonetic value of the input text
   */
  /* readonly attribute DOMString phonetic; */
  wchar[] Phonetic(){
    scope auto value = new AString();
    nsresult __result = inner.GetPhonetic(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIPhonetic inner;

}

