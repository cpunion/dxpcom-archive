/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDebug.idl
 */

module mozilla.dxpcom.nsIDebugD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDebug;


public import mozilla.dxpcom.nsIDebugD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDebug */
/**
 * nsIDebug is an interface between XPCOM Glue and XPCOM.  Users should access
 * the nsIDebug interface through the static class nsDebug.
 * @see nsDebug.h
 *    
 * @status UNDER_REVIEW
 *
 */
class nsIDebugD : public nsISupportsD {

  static const nsIID IID = NS_IDEBUG_IID;


  alias nsIDebug InnerType;

  this(nsIDebug intr){
    super(intr);
    this.inner = intr;
  }

  nsIDebug opCast() {
    return inner;
  }

  void opAssign(nsIDebug value) {
    inner = value;
  }

  /* void assertion (in string aStr, in string aExpr, in string aFile, in long aLine); */
  void Assertion(char*aStr, char*aExpr, char*aFile, PRInt32 aLine){
    nsresult __result = inner.Assertion(aStr, aExpr, aFile, aLine);
    CheckException(__result);
  }

  /* void warning (in string aStr, in string aFile, in long aLine); */
  void Warning(char*aStr, char*aFile, PRInt32 aLine){
    nsresult __result = inner.Warning(aStr, aFile, aLine);
    CheckException(__result);
  }

  /* void break (in string aFile, in long aLine); */
  void Break(char*aFile, PRInt32 aLine){
    nsresult __result = inner.Break(aFile, aLine);
    CheckException(__result);
  }

  /* void abort (in string aFile, in long aLine); */
  void Abort(char*aFile, PRInt32 aLine){
    nsresult __result = inner.Abort(aFile, aLine);
    CheckException(__result);
  }

private:
  nsIDebug inner;

}

