/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPDirectory.idl
 */

module mozilla.dxpcom.nsIAbLDAPDirectoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPDirectory;


public import mozilla.dxpcom.nsIAbLDAPDirectoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsIAbLDAPDirectory */
/**
 * XXX This should really inherit from nsIAbDirectory, and some day it will.
 * But for now, doing that complicates implementation.
 */
class nsIAbLDAPDirectoryD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPDIRECTORY_IID;


  alias nsIAbLDAPDirectory InnerType;

  this(nsIAbLDAPDirectory intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPDirectory opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPDirectory value) {
    inner = value;
  }

  /**
     * If set, these arrays of nsILDAPControls are passed through to the
     * nsILDAPOperation that searchExt is called on.
     */
  /* attribute nsIMutableArray searchServerControls; */
  nsIMutableArrayD  SearchServerControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetSearchServerControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void SearchServerControls(nsIMutableArrayD  aSearchServerControls){
    nsIMutableArray value;
    nsresult __result = inner.SetSearchServerControls(value);
    CheckException(__result);
  }

  /* attribute nsIMutableArray searchClientControls; */
  nsIMutableArrayD  SearchClientControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetSearchClientControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void SearchClientControls(nsIMutableArrayD  aSearchClientControls){
    nsIMutableArray value;
    nsresult __result = inner.SetSearchClientControls(value);
    CheckException(__result);
  }

private:
  nsIAbLDAPDirectory inner;

}

