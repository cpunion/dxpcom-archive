/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentLoader.idl
 */

module mozilla.dxpcom.nsIDocumentLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocumentLoader;


public import mozilla.dxpcom.nsIDocumentLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIWebProgress;

public import mozilla.dxpcom.nsIWebProgressD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIDocumentLoader */
/**
 * An nsIDocumentLoader is an interface responsible for tracking groups of
 * loads that belong together (images, external scripts, etc) and subdocuments
 * (<iframe>, <frame>, etc). It is also responsible for sending
 * nsIWebProgressListener notifications.
 * XXXbz this interface should go away, we think...
 */
class nsIDocumentLoaderD : public nsISupportsD {

  static const nsIID IID = NS_IDOCUMENTLOADER_IID;


  alias nsIDocumentLoader InnerType;

  this(nsIDocumentLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocumentLoader opCast() {
    return inner;
  }

  void opAssign(nsIDocumentLoader value) {
    inner = value;
  }

  /* void stop (); */
  void Stop(){
    nsresult __result = inner.Stop();
    CheckException(__result);
  }

  /* readonly attribute nsISupports container; */
  nsISupportsD  Container(){
    nsISupports value;
    nsresult __result = inner.GetContainer(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* readonly attribute nsILoadGroup loadGroup; */
  nsILoadGroupD  LoadGroup(){
    nsILoadGroup value;
    nsresult __result = inner.GetLoadGroup(&value);
    CheckException(__result);
    return new nsILoadGroupD(value);
  }

  /* readonly attribute nsIChannel documentChannel; */
  nsIChannelD  DocumentChannel(){
    nsIChannel value;
    nsresult __result = inner.GetDocumentChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

private:
  nsIDocumentLoader inner;

}

