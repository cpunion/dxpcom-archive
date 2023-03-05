/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMessageService.idl
 */

module mozilla.xpcom.nsIMsgMessageService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchSession; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIStreamConverter; /* forward declaration */


/* starting interface:    nsIMsgMessageService */
const char[] NS_IMSGMESSAGESERVICE_IID_STR = "f11009c1-f697-11d2-807f-006008128c4e";

const nsIID NS_IMSGMESSAGESERVICE_IID= 
  {0xf11009c1, 0xf697, 0x11d2, 
    [ 0x80, 0x7f, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMsgMessageService : nsISupports {
  static const char[] IID_STR = NS_IMSGMESSAGESERVICE_IID_STR;
  static const nsIID IID = NS_IMSGMESSAGESERVICE_IID;

  /* void CopyMessage (in string aSrcURI, in nsIStreamListener aCopyListener, in boolean aMoveMessage, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  nsresult CopyMessage(char *aSrcURI, nsIStreamListener aCopyListener, PRBool aMoveMessage, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *aURL);

  /* [noscript] void CopyMessages (in nsMsgKeyArrayPtr keys, in nsIMsgFolder srcFolder, in nsIStreamListener aCopyListener, in boolean aMoveMessage, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  nsresult CopyMessages(nsMsgKeyArray * keys, nsIMsgFolder srcFolder, nsIStreamListener aCopyListener, PRBool aMoveMessage, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *aURL);

  /* void DisplayMessage (in string aMessageURI, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in string aCharsetOverride, out nsIURI aURL); */
  nsresult DisplayMessage(char *aMessageURI, nsISupports aDisplayConsumer, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, char *aCharsetOverride, nsIURI *aURL);

  /* void openAttachment (in string aContentType, in string aFileName, in string aUrl, in string aMessageUri, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsresult OpenAttachment(char *aContentType, char *aFileName, char *aUrl, char *aMessageUri, nsISupports aDisplayConsumer, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener);

  /* void SaveMessageToDisk (in string aMessageURI, in nsIFileSpec aFile, in boolean aGenerateDummyEnvelope, in nsIUrlListener aUrlListener, out nsIURI aURL, in boolean canonicalLineEnding, in nsIMsgWindow aMsgWindow); */
  nsresult SaveMessageToDisk(char *aMessageURI, nsIFileSpec aFile, PRBool aGenerateDummyEnvelope, nsIUrlListener aUrlListener, nsIURI *aURL, PRBool canonicalLineEnding, nsIMsgWindow aMsgWindow);

  /* void GetUrlForUri (in string aMessageURI, out nsIURI aURL, in nsIMsgWindow aMsgWindow); */
  nsresult GetUrlForUri(char *aMessageURI, nsIURI *aURL, nsIMsgWindow aMsgWindow);

  /* void DisplayMessageForPrinting (in string aMessageURI, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult DisplayMessageForPrinting(char *aMessageURI, nsISupports aDisplayConsumer, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* void Search (in nsIMsgSearchSession aSearchSession, in nsIMsgWindow aMsgWindow, in nsIMsgFolder aMsgFolder, in string aSearchUri); */
  nsresult Search(nsIMsgSearchSession aSearchSession, nsIMsgWindow aMsgWindow, nsIMsgFolder aMsgFolder, char *aSearchUri);

  /* nsIURI streamMessage (in string aMessageURI, in nsISupports aConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in boolean aConvertData, in string aAdditionalHeader); */
  nsresult StreamMessage(char *aMessageURI, nsISupports aConsumer, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, PRBool aConvertData, char *aAdditionalHeader, nsIURI *_retval);

  /**
     * now the the message datasource is going away
     * we need away to go from message uri to go nsIMsgDBHdr
     */
  /* nsIMsgDBHdr messageURIToMsgHdr (in string uri); */
  nsresult MessageURIToMsgHdr(char *uri, nsIMsgDBHdr *_retval);

}


/* starting interface:    nsIMsgMessageFetchPartService */
const char[] NS_IMSGMESSAGEFETCHPARTSERVICE_IID_STR = "3728c255-480c-11d4-98d0-001083010e9b";

const nsIID NS_IMSGMESSAGEFETCHPARTSERVICE_IID= 
  {0x3728c255, 0x480c, 0x11d4, 
    [ 0x98, 0xd0, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMsgMessageFetchPartService : nsISupports {
  static const char[] IID_STR = NS_IMSGMESSAGEFETCHPARTSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGMESSAGEFETCHPARTSERVICE_IID;

  /* nsIURI fetchMimePart (in nsIURI aURI, in string aMessageUri, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsresult FetchMimePart(nsIURI aURI, char *aMessageUri, nsISupports aDisplayConsumer, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIURI *_retval);

}

