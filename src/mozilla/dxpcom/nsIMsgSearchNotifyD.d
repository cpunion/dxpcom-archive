/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchNotify.idl
 */

module mozilla.dxpcom.nsIMsgSearchNotifyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchNotify;


public import mozilla.dxpcom.nsIMsgSearchNotifyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgSearchSession;

public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIMsgSearchNotify */
class nsIMsgSearchNotifyD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHNOTIFY_IID;


  alias nsIMsgSearchNotify InnerType;

  this(nsIMsgSearchNotify intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchNotify opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchNotify value) {
    inner = value;
  }

  /* void onSearchHit (in nsIMsgDBHdr header, in nsIMsgFolder folder); */
  void OnSearchHit(nsIMsgDBHdrD header, nsIMsgFolderD folder){
    nsresult __result = inner.OnSearchHit(header ? cast(nsIMsgDBHdr)header : null, folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* void onSearchDone (in nsresult status); */
  void OnSearchDone(nsresult status){
    nsresult __result = inner.OnSearchDone(status);
    CheckException(__result);
  }

  /* void onNewSearch (); */
  void OnNewSearch(){
    nsresult __result = inner.OnNewSearch();
    CheckException(__result);
  }

private:
  nsIMsgSearchNotify inner;

}

