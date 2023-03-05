/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerContainer.idl
 */

module mozilla.dxpcom.nsIContentViewerContainerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentViewerContainer;


public import mozilla.dxpcom.nsIContentViewerContainerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIContentViewer;

public import mozilla.dxpcom.nsIContentViewerD;


/* starting wrapper class:    nsIContentViewerContainer */
class nsIContentViewerContainerD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTVIEWERCONTAINER_IID;


  alias nsIContentViewerContainer InnerType;

  this(nsIContentViewerContainer intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentViewerContainer opCast() {
    return inner;
  }

  void opAssign(nsIContentViewerContainer value) {
    inner = value;
  }

  /* void embed (in nsIContentViewer aDocViewer, in string aCommand, in nsISupports aExtraInfo); */
  void Embed(nsIContentViewerD aDocViewer, char*aCommand, nsISupportsD aExtraInfo){
    nsresult __result = inner.Embed(aDocViewer ? cast(nsIContentViewer)aDocViewer : null, aCommand, aExtraInfo ? cast(nsISupports)aExtraInfo : null);
    CheckException(__result);
  }

  /**
   * Allows the PrintEngine to make this call on 
   * an internal interface to the DocShell
   */
  /* void setIsPrinting (in boolean aIsPrinting); */
  void SetIsPrinting(PRBool aIsPrinting){
    nsresult __result = inner.SetIsPrinting(aIsPrinting);
    CheckException(__result);
  }

private:
  nsIContentViewerContainer inner;

}

