/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedWriter.idl
 */

module mozilla.dxpcom.nsIFeedWriterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedWriter;


public import mozilla.dxpcom.nsIFeedWriterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIFeedWriter */
/**
 * Instances of this component write UI into the display page. This component
 * is trusted so can access preferences etc, but page content isn't and so
 * cannot.
 */
class nsIFeedWriterD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDWRITER_IID;


  alias nsIFeedWriter InnerType;

  this(nsIFeedWriter intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedWriter opCast() {
    return inner;
  }

  void opAssign(nsIFeedWriter value) {
    inner = value;
  }

  /**
   * Write feed UI for a particular preview DOMWindow
   * @param   window
   *          The DOMWindow of the preview page that has loaded. 
   *          window.location.href == the URI of the feed.
   */
  /* void write (in nsIDOMWindow window); */
  void Write(nsIDOMWindowD window){
    nsresult __result = inner.Write(window ? cast(nsIDOMWindow)window : null);
    CheckException(__result);
  }

  /**
   * Uninitialize the feed writer.
   */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

private:
  nsIFeedWriter inner;

}

