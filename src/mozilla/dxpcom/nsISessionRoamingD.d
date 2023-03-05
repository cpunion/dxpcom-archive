/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISessionRoaming.idl
 */

module mozilla.dxpcom.nsISessionRoamingD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISessionRoaming;


public import mozilla.dxpcom.nsISessionRoamingD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsISessionRoaming */
/**
 * nsISessionRoaming
 *
 * Implementation should be a service.
 *
 * see extensions/sraoming/README.txt
 * 
 * @status EXPERIMENTAL
 * @version 1.0
 */
class nsISessionRoamingD : public nsISupportsD {

  static const nsIID IID = NS_ISESSIONROAMING_IID;


  alias nsISessionRoaming InnerType;

  this(nsISessionRoaming intr){
    super(intr);
    this.inner = intr;
  }

  nsISessionRoaming opCast() {
    return inner;
  }

  void opAssign(nsISessionRoaming value) {
    inner = value;
  }

  /* void BeginSession (); */
  void BeginSession(){
    nsresult __result = inner.BeginSession();
    CheckException(__result);
  }

  /* void EndSession (); */
  void EndSession(){
    nsresult __result = inner.EndSession();
    CheckException(__result);
  }

  /* boolean isRoaming (); */
  PRBool IsRoaming(){
    PRBool _retval;
    nsresult __result = inner.IsRoaming(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISessionRoaming inner;

}

