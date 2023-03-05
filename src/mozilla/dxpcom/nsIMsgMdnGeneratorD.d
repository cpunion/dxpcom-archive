/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMdnGenerator.idl
 */

module mozilla.dxpcom.nsIMsgMdnGeneratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMdnGenerator;


public import mozilla.dxpcom.nsIMsgMdnGeneratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMimeHeaders;

public import mozilla.dxpcom.nsIMimeHeadersD;


/* starting wrapper class:    nsIMsgMdnGenerator */
class nsIMsgMdnGeneratorD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMDNGENERATOR_IID;


  alias nsIMsgMdnGenerator InnerType;

  this(nsIMsgMdnGenerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMdnGenerator opCast() {
    return inner;
  }

  void opAssign(nsIMsgMdnGenerator value) {
    inner = value;
  }

  enum { eDisplayed = 0 }

  enum { eDispatched = 1 }

  enum { eProcessed = 2 }

  enum { eDeleted = 3 }

  enum { eDenied = 4 }

  enum { eFailed = 5 }

  enum { eDntType = 0 }

  enum { eRrtType = 1 }

  enum { eDntRrtType = 2 }

  enum { eIncorporateInbox = 0 }

  enum { eIncorporateSent = 1 }

  /* void process (in EDisposeType eType, in nsIMsgWindow aWindow, in nsIMsgFolder folder, in nsMsgKey key, in nsIMimeHeaders headers, in boolean autoAction); */
  void Process(EDisposeType eType, nsIMsgWindowD aWindow, nsIMsgFolderD folder, nsMsgKey key, nsIMimeHeadersD headers, PRBool autoAction){
    nsresult __result = inner.Process(eType, aWindow ? cast(nsIMsgWindow)aWindow : null, folder ? cast(nsIMsgFolder)folder : null, key, headers ? cast(nsIMimeHeaders)headers : null, autoAction);
    CheckException(__result);
  }

private:
  nsIMsgMdnGenerator inner;

}

