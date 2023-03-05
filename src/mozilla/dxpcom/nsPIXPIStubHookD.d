/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIXPIStubHook.idl
 */

module mozilla.dxpcom.nsPIXPIStubHookD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIXPIStubHook;


public import mozilla.dxpcom.nsPIXPIStubHookD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsPIXPIStubHook */
/**
 * nsPIXPIStubHook
 *
 * Used by the Install Wizard to point at the eventual target dir and
 * override the default assumption that the wizard itself is the program.
 */
class nsPIXPIStubHookD : public nsISupportsD {

  static const nsIID IID = NS_PIXPISTUBHOOK_IID;


  alias nsPIXPIStubHook InnerType;

  this(nsPIXPIStubHook intr){
    super(intr);
    this.inner = intr;
  }

  nsPIXPIStubHook opCast() {
    return inner;
  }

  void opAssign(nsPIXPIStubHook value) {
    inner = value;
  }

  /* void StubInitialize (in nsIFile dir, in string logName); */
  void StubInitialize(nsIFileD dir, char*logName){
    nsresult __result = inner.StubInitialize(dir ? cast(nsIFile)dir : null, logName);
    CheckException(__result);
  }

private:
  nsPIXPIStubHook inner;

}

