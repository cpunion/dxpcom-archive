/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginDocument.idl
 */

module mozilla.dxpcom.nsIPluginDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginDocument;


public import mozilla.dxpcom.nsIPluginDocumentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIPluginDocument */
class nsIPluginDocumentD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGINDOCUMENT_IID;


  alias nsIPluginDocument InnerType;

  this(nsIPluginDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginDocument opCast() {
    return inner;
  }

  void opAssign(nsIPluginDocument value) {
    inner = value;
  }

  /**
  * Sets the stream listener for this plugin document 
  */
  /* void setStreamListener (in nsIStreamListener aStreamListener); */
  void SetStreamListener(nsIStreamListenerD aStreamListener){
    nsresult __result = inner.SetStreamListener(aStreamListener ? cast(nsIStreamListener)aStreamListener : null);
    CheckException(__result);
  }

  /**
  * Causes the plugin to print in full-page mode
  */
  /* void print (); */
  void Print(){
    nsresult __result = inner.Print();
    CheckException(__result);
  }

private:
  nsIPluginDocument inner;

}

