/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgPrintEngine.idl
 */

module mozilla.xpcom.nsIMsgPrintEngine;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIMsgStatusFeedback;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIPrintSettings; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowserPrint; /* forward declaration */


/* starting interface:    nsIMsgPrintEngine */
const char[] NS_IMSGPRINTENGINE_IID_STR = "91fd6b10-e0bc-11d3-8f97-000064657374";

const nsIID NS_IMSGPRINTENGINE_IID= 
  {0x91fd6b10, 0xe0bc, 0x11d3, 
    [ 0x8f, 0x97, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsIMsgPrintEngine : nsISupports {
  static const char[] IID_STR = NS_IMSGPRINTENGINE_IID_STR;
  static const nsIID IID = NS_IMSGPRINTENGINE_IID;

  /**
     * Print/PrintPreview Msg Type
     */
  enum { MNAB_START = 0 };

  enum { MNAB_PRINT_MSG = 0 };

  enum { MNAB_PRINTPREVIEW_MSG = 1 };

  enum { MNAB_PRINT_AB_CARD = 2 };

  enum { MNAB_PRINTPREVIEW_AB_CARD = 3 };

  enum { MNAB_PRINT_ADDRBOOK = 4 };

  enum { MNAB_PRINTPREVIEW_ADDRBOOK = 5 };

  enum { MNAB_END = 6 };

  /* void setWindow (in nsIDOMWindowInternal ptr); */
  nsresult SetWindow(nsIDOMWindowInternal ptr);

  /* void setParentWindow (in nsIDOMWindowInternal ptr); */
  nsresult SetParentWindow(nsIDOMWindowInternal ptr);

  /* void showWindow (in boolean aShow); */
  nsresult ShowWindow(PRBool aShow);

  /* void setStatusFeedback (in nsIMsgStatusFeedback feedback); */
  nsresult SetStatusFeedback(nsIMsgStatusFeedback feedback);

  /* void setPrintURICount (in PRInt32 aCount); */
  nsresult SetPrintURICount(PRInt32 aCount);

  /* void addPrintURI (in wstring aURI); */
  nsresult AddPrintURI(PRUnichar *aURI);

  /* void startPrintOperation (in nsIPrintSettings aPS); */
  nsresult StartPrintOperation(nsIPrintSettings aPS);

  /* void setStartupPPObserver (in nsIObserver startupPPObs); */
  nsresult SetStartupPPObserver(nsIObserver startupPPObs);

  /* void setMsgType (in long aMsgType); */
  nsresult SetMsgType(PRInt32 aMsgType);

  /* attribute boolean doPrintPreview; */
  nsresult GetDoPrintPreview(PRBool *aDoPrintPreview);
  nsresult SetDoPrintPreview(PRBool aDoPrintPreview);

  /* readonly attribute nsIWebBrowserPrint webBrowserPrint; */
  nsresult GetWebBrowserPrint(nsIWebBrowserPrint  *aWebBrowserPrint);

}

