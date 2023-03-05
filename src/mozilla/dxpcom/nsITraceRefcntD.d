/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITraceRefcnt.idl
 */

module mozilla.dxpcom.nsITraceRefcntD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITraceRefcnt;


public import mozilla.dxpcom.nsITraceRefcntD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITraceRefcnt */
/**  
 * nsITraceRefcnt is an interface between XPCOM Glue and XPCOM.  Users should
 * access the nsITraceRefcnt interface through the static class nsTraceRefcnt.
 * @see nsTraceRefcnt.h
 *    
 * @status UNDER_REVIEW
 */
class nsITraceRefcntD : public nsISupportsD {

  static const nsIID IID = NS_ITRACEREFCNT_IID;


  alias nsITraceRefcnt InnerType;

  this(nsITraceRefcnt intr){
    super(intr);
    this.inner = intr;
  }

  nsITraceRefcnt opCast() {
    return inner;
  }

  void opAssign(nsITraceRefcnt value) {
    inner = value;
  }

  /* void logAddRef (in voidPtr aPtr, in nsrefcnt aNewRefcnt, in string aTypeName, in unsigned long aInstanceSize); */
  void LogAddRef(void * aPtr, nsrefcnt aNewRefcnt, char*aTypeName, PRUint32 aInstanceSize){
    nsresult __result = inner.LogAddRef(aPtr, aNewRefcnt, aTypeName, aInstanceSize);
    CheckException(__result);
  }

  /* void logRelease (in voidPtr aPtr, in nsrefcnt aNewRefcnt, in string aTypeName); */
  void LogRelease(void * aPtr, nsrefcnt aNewRefcnt, char*aTypeName){
    nsresult __result = inner.LogRelease(aPtr, aNewRefcnt, aTypeName);
    CheckException(__result);
  }

  /* void logCtor (in voidPtr aPtr, in string aTypeName, in unsigned long aInstanceSize); */
  void LogCtor(void * aPtr, char*aTypeName, PRUint32 aInstanceSize){
    nsresult __result = inner.LogCtor(aPtr, aTypeName, aInstanceSize);
    CheckException(__result);
  }

  /* void logDtor (in voidPtr aPtr, in string aTypeName, in unsigned long aInstanceSize); */
  void LogDtor(void * aPtr, char*aTypeName, PRUint32 aInstanceSize){
    nsresult __result = inner.LogDtor(aPtr, aTypeName, aInstanceSize);
    CheckException(__result);
  }

  /* void logAddCOMPtr (in voidPtr aPtr, in nsISupports aObject); */
  void LogAddCOMPtr(void * aPtr, nsISupportsD aObject){
    nsresult __result = inner.LogAddCOMPtr(aPtr, aObject ? cast(nsISupports)aObject : null);
    CheckException(__result);
  }

  /* void logReleaseCOMPtr (in voidPtr aPtr, in nsISupports aObject); */
  void LogReleaseCOMPtr(void * aPtr, nsISupportsD aObject){
    nsresult __result = inner.LogReleaseCOMPtr(aPtr, aObject ? cast(nsISupports)aObject : null);
    CheckException(__result);
  }

private:
  nsITraceRefcnt inner;

}

