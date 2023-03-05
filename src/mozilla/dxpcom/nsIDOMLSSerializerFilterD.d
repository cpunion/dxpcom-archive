/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSSerializerFilter.idl
 */

module mozilla.dxpcom.nsIDOMLSSerializerFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMLSSerializerFilter;


public import mozilla.dxpcom.nsIDOMLSSerializerFilterD;

public import mozilla.xpcom.nsIDOMNodeFilter;
public import mozilla.dxpcom.nsIDOMNodeFilterD;


/* starting wrapper class:    nsIDOMLSSerializerFilter */
class nsIDOMLSSerializerFilterD : public nsIDOMNodeFilterD {

  static const nsIID IID = NS_IDOMLSSERIALIZERFILTER_IID;


  alias nsIDOMLSSerializerFilter InnerType;

  this(nsIDOMLSSerializerFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMLSSerializerFilter opCast() {
    return inner;
  }

  void opAssign(nsIDOMLSSerializerFilter value) {
    inner = value;
  }

  /* readonly attribute unsigned long whatToShow; */
  PRUint32 WhatToShow(){
    PRUint32 value;
    nsresult __result = inner.GetWhatToShow(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDOMLSSerializerFilter inner;

}

