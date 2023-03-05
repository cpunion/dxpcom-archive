/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddbookUrl.idl
 */

module mozilla.dxpcom.nsIAddbookUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddbookUrl;


public import mozilla.dxpcom.nsIAddbookUrlD;

public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIAddbookUrlOperation */
class nsIAddbookUrlOperationD {

  static const nsIID IID = NS_IADDBOOKURLOPERATION_IID;


  alias nsIAddbookUrlOperation InnerType;

  this(nsIAddbookUrlOperation intr){
    this.inner = intr;
  }

  nsIAddbookUrlOperation opCast() {
    return inner;
  }

  void opAssign(nsIAddbookUrlOperation value) {
    inner = value;
  }

  enum { InvalidUrl = 0 }

  enum { PrintAddressBook = 1 }

  enum { AddVCard = 2 }

private:
  nsIAddbookUrlOperation inner;

}


/* starting wrapper class:    nsIAddbookUrl */
class nsIAddbookUrlD : public nsIURID {

  static const nsIID IID = NS_IADDBOOKURL_IID;


  alias nsIAddbookUrl InnerType;

  this(nsIAddbookUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddbookUrl opCast() {
    return inner;
  }

  void opAssign(nsIAddbookUrl value) {
    inner = value;
  }

  /* readonly attribute long addbookOperation; */
  PRInt32 AddbookOperation(){
    PRInt32 value;
    nsresult __result = inner.GetAddbookOperation(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIAddbookUrl inner;

}

