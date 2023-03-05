/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbBase.idl
 */

module mozilla.dxpcom.nsIAbBaseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbBase;


public import mozilla.dxpcom.nsIAbBaseD;

public import mozilla.xpcom.nsICollection;
public import mozilla.dxpcom.nsICollectionD;


/* starting wrapper class:    nsIAbBase */
class nsIAbBaseD : public nsICollectionD {

  static const nsIID IID = NS_IABBASE_IID;


  alias nsIAbBase InnerType;

  this(nsIAbBase intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbBase opCast() {
    return inner;
  }

  void opAssign(nsIAbBase value) {
    inner = value;
  }

  /* readonly attribute string URI; */
  char* URI(){
    char* value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }
  void Name(char* aName){
    nsresult __result = inner.SetName(aName);
    CheckException(__result);
  }

  /* nsISupports GetChildNamed (in string name); */
  nsISupportsD  GetChildNamed(char*name){
    nsISupports _retval;
    nsresult __result = inner.GetChildNamed(name, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* attribute nsIAbBase parent; */
  nsIAbBaseD  Parent(){
    nsIAbBase value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIAbBaseD(value);
  }
  void Parent(nsIAbBaseD  aParent){
    nsIAbBase value;
    nsresult __result = inner.SetParent(value);
    CheckException(__result);
  }

  /* nsISimpleEnumerator GetChildNodes (); */
  nsISimpleEnumeratorD  GetChildNodes(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetChildNodes(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIAbBase inner;

}

