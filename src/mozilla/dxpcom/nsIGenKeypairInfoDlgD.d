/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGenKeypairInfoDlg.idl
 */

module mozilla.dxpcom.nsIGenKeypairInfoDlgD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIGenKeypairInfoDlg;


public import mozilla.dxpcom.nsIGenKeypairInfoDlgD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIKeygenThread;

public import mozilla.dxpcom.nsIKeygenThreadD;


/* starting wrapper class:    nsIGeneratingKeypairInfoDialogs */
/**
 * nsIGeneratingKeypairInfoDialogs
 *  This is the interface for giving feedback to the user
 *  while generating a key pair.
 */
class nsIGeneratingKeypairInfoDialogsD : public nsISupportsD {

  static const nsIID IID = NS_IGENERATINGKEYPAIRINFODIALOGS_IID;


  alias nsIGeneratingKeypairInfoDialogs InnerType;

  this(nsIGeneratingKeypairInfoDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsIGeneratingKeypairInfoDialogs opCast() {
    return inner;
  }

  void opAssign(nsIGeneratingKeypairInfoDialogs value) {
    inner = value;
  }

  /* void displayGeneratingKeypairInfo (in nsIInterfaceRequestor ctx, in nsIKeygenThread runnable); */
  void DisplayGeneratingKeypairInfo(nsIInterfaceRequestorD ctx, nsIKeygenThreadD runnable){
    nsresult __result = inner.DisplayGeneratingKeypairInfo(ctx ? cast(nsIInterfaceRequestor)ctx : null, runnable ? cast(nsIKeygenThread)runnable : null);
    CheckException(__result);
  }

private:
  nsIGeneratingKeypairInfoDialogs inner;

}

