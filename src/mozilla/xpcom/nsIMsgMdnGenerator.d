/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMdnGenerator.idl
 */

module mozilla.xpcom.nsIMsgMdnGenerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMimeHeaders; /* forward declaration */

alias PRInt32 EDisposeType;

alias PRInt32 ReceiptHdrType;

alias PRInt32 MDNIncorporateType;


/* starting interface:    nsIMsgMdnGenerator */
const char[] NS_IMSGMDNGENERATOR_IID_STR = "b1658370-f4af-4b02-8052-3cfeb7dab10e";

const nsIID NS_IMSGMDNGENERATOR_IID= 
  {0xb1658370, 0xf4af, 0x4b02, 
    [ 0x80, 0x52, 0x3c, 0xfe, 0xb7, 0xda, 0xb1, 0x0e ]};

extern(Windows)
interface nsIMsgMdnGenerator : nsISupports {
  static const char[] IID_STR = NS_IMSGMDNGENERATOR_IID_STR;
  static const nsIID IID = NS_IMSGMDNGENERATOR_IID;

  enum { eDisplayed = 0 };

  enum { eDispatched = 1 };

  enum { eProcessed = 2 };

  enum { eDeleted = 3 };

  enum { eDenied = 4 };

  enum { eFailed = 5 };

  enum { eDntType = 0 };

  enum { eRrtType = 1 };

  enum { eDntRrtType = 2 };

  enum { eIncorporateInbox = 0 };

  enum { eIncorporateSent = 1 };

  /* void process (in EDisposeType eType, in nsIMsgWindow aWindow, in nsIMsgFolder folder, in nsMsgKey key, in nsIMimeHeaders headers, in boolean autoAction); */
  nsresult Process(EDisposeType eType, nsIMsgWindow aWindow, nsIMsgFolder folder, nsMsgKey key, nsIMimeHeaders headers, PRBool autoAction);

}

