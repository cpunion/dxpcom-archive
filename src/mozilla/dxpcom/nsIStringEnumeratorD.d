/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringEnumerator.idl
 */

module mozilla.dxpcom.nsIStringEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStringEnumerator;


public import mozilla.dxpcom.nsIStringEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIStringEnumerator */
/**
 * Used to enumerate over an ordered list of strings.
 */
class nsIStringEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_ISTRINGENUMERATOR_IID;


  alias nsIStringEnumerator InnerType;

  this(nsIStringEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIStringEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIStringEnumerator value) {
    inner = value;
  }

  /* boolean hasMore (); */
  PRBool HasMore(){
    PRBool _retval;
    nsresult __result = inner.HasMore(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getNext (); */
  wchar[] GetNext(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetNext(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIStringEnumerator inner;

}


/* starting wrapper class:    nsIUTF8StringEnumerator */
class nsIUTF8StringEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_IUTF8STRINGENUMERATOR_IID;


  alias nsIUTF8StringEnumerator InnerType;

  this(nsIUTF8StringEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIUTF8StringEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIUTF8StringEnumerator value) {
    inner = value;
  }

  /* boolean hasMore (); */
  PRBool HasMore(){
    PRBool _retval;
    nsresult __result = inner.HasMore(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* AUTF8String getNext (); */
  char[] GetNext(){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetNext(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIUTF8StringEnumerator inner;

}

