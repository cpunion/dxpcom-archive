/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpcjsid.idl
 */

module mozilla.dxpcom.xpcjsidD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.xpcjsid;


public import mozilla.dxpcom.xpcjsidD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIJSID */
class nsIJSIDD : public nsISupportsD {

  static const nsIID IID = NS_IJSID_IID;


  alias nsIJSID InnerType;

  this(nsIJSID intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSID opCast() {
    return inner;
  }

  void opAssign(nsIJSID value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string number; */
  char* Number(){
    char* value;
    nsresult __result = inner.GetNumber(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] readonly attribute nsIDPtr id; */
  nsID * Id(){
    nsID * value;
    nsresult __result = inner.GetId(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean valid; */
  PRBool Valid(){
    PRBool value;
    nsresult __result = inner.GetValid(&value);
    CheckException(__result);
    return value;
  }

  /* boolean equals (in nsIJSID other); */
  PRBool Equals(nsIJSIDD other){
    PRBool _retval;
    nsresult __result = inner.Equals(other ? cast(nsIJSID)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void initialize (in string idString); */
  void Initialize(char*idString){
    nsresult __result = inner.Initialize(idString);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIJSID inner;

}


/* starting wrapper class:    nsIJSIID */
class nsIJSIIDD : public nsIJSIDD {

  static const nsIID IID = NS_IJSIID_IID;


  alias nsIJSIID InnerType;

  this(nsIJSIID intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSIID opCast() {
    return inner;
  }

  void opAssign(nsIJSIID value) {
    inner = value;
  }

private:
  nsIJSIID inner;

}


/* starting wrapper class:    nsIJSCID */
class nsIJSCIDD : public nsIJSIDD {

  static const nsIID IID = NS_IJSCID_IID;


  alias nsIJSCID InnerType;

  this(nsIJSCID intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSCID opCast() {
    return inner;
  }

  void opAssign(nsIJSCID value) {
    inner = value;
  }

  /* nsISupports createInstance (); */
  nsISupportsD  CreateInstance(){
    nsISupports _retval;
    nsresult __result = inner.CreateInstance(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* nsISupports getService (); */
  nsISupportsD  GetService(){
    nsISupports _retval;
    nsresult __result = inner.GetService(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIJSCID inner;

}

