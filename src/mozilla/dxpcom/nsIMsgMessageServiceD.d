/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMessageService.idl
 */

module mozilla.dxpcom.nsIMsgMessageServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMessageService;


public import mozilla.dxpcom.nsIMsgMessageServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgSearchSession;

public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIStreamConverter;

public import mozilla.dxpcom.nsIStreamConverterD;


/* starting wrapper class:    nsIMsgMessageService */
class nsIMsgMessageServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMESSAGESERVICE_IID;


  alias nsIMsgMessageService InnerType;

  this(nsIMsgMessageService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMessageService opCast() {
    return inner;
  }

  void opAssign(nsIMsgMessageService value) {
    inner = value;
  }

  /* void CopyMessage (in string aSrcURI, in nsIStreamListener aCopyListener, in boolean aMoveMessage, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  void CopyMessage(char*aSrcURI, nsIStreamListenerD aCopyListener, PRBool aMoveMessage, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.CopyMessage(aSrcURI, aCopyListener ? cast(nsIStreamListener)aCopyListener : null, aMoveMessage, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* [noscript] void CopyMessages (in nsMsgKeyArrayPtr keys, in nsIMsgFolder srcFolder, in nsIStreamListener aCopyListener, in boolean aMoveMessage, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  void CopyMessages(nsMsgKeyArray * keys, nsIMsgFolderD srcFolder, nsIStreamListenerD aCopyListener, PRBool aMoveMessage, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.CopyMessages(keys, srcFolder ? cast(nsIMsgFolder)srcFolder : null, aCopyListener ? cast(nsIStreamListener)aCopyListener : null, aMoveMessage, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void DisplayMessage (in string aMessageURI, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in string aCharsetOverride, out nsIURI aURL); */
  void DisplayMessage(char*aMessageURI, nsISupportsD aDisplayConsumer, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, char*aCharsetOverride, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DisplayMessage(aMessageURI, aDisplayConsumer ? cast(nsISupports)aDisplayConsumer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aCharsetOverride, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void openAttachment (in string aContentType, in string aFileName, in string aUrl, in string aMessageUri, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  void OpenAttachment(char*aContentType, char*aFileName, char*aUrl, char*aMessageUri, nsISupportsD aDisplayConsumer, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener){
    nsresult __result = inner.OpenAttachment(aContentType, aFileName, aUrl, aMessageUri, aDisplayConsumer ? cast(nsISupports)aDisplayConsumer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void SaveMessageToDisk (in string aMessageURI, in nsIFileSpec aFile, in boolean aGenerateDummyEnvelope, in nsIUrlListener aUrlListener, out nsIURI aURL, in boolean canonicalLineEnding, in nsIMsgWindow aMsgWindow); */
  void SaveMessageToDisk(char*aMessageURI, nsIFileSpecD aFile, PRBool aGenerateDummyEnvelope, nsIUrlListenerD aUrlListener, out nsIURID aURL, PRBool canonicalLineEnding, nsIMsgWindowD aMsgWindow){
    nsIURI _aURL;
    nsresult __result = inner.SaveMessageToDisk(aMessageURI, aFile ? cast(nsIFileSpec)aFile : null, aGenerateDummyEnvelope, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, canonicalLineEnding, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void GetUrlForUri (in string aMessageURI, out nsIURI aURL, in nsIMsgWindow aMsgWindow); */
  void GetUrlForUri(char*aMessageURI, out nsIURID aURL, nsIMsgWindowD aMsgWindow){
    nsIURI _aURL;
    nsresult __result = inner.GetUrlForUri(aMessageURI, &_aURL, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void DisplayMessageForPrinting (in string aMessageURI, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void DisplayMessageForPrinting(char*aMessageURI, nsISupportsD aDisplayConsumer, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DisplayMessageForPrinting(aMessageURI, aDisplayConsumer ? cast(nsISupports)aDisplayConsumer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void Search (in nsIMsgSearchSession aSearchSession, in nsIMsgWindow aMsgWindow, in nsIMsgFolder aMsgFolder, in string aSearchUri); */
  void Search(nsIMsgSearchSessionD aSearchSession, nsIMsgWindowD aMsgWindow, nsIMsgFolderD aMsgFolder, char*aSearchUri){
    nsresult __result = inner.Search(aSearchSession ? cast(nsIMsgSearchSession)aSearchSession : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aMsgFolder ? cast(nsIMsgFolder)aMsgFolder : null, aSearchUri);
    CheckException(__result);
  }

  /* nsIURI streamMessage (in string aMessageURI, in nsISupports aConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in boolean aConvertData, in string aAdditionalHeader); */
  nsIURID  StreamMessage(char*aMessageURI, nsISupportsD aConsumer, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, PRBool aConvertData, char*aAdditionalHeader){
    nsIURI _retval;
    nsresult __result = inner.StreamMessage(aMessageURI, aConsumer ? cast(nsISupports)aConsumer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aConvertData, aAdditionalHeader, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * now the the message datasource is going away
     * we need away to go from message uri to go nsIMsgDBHdr
     */
  /* nsIMsgDBHdr messageURIToMsgHdr (in string uri); */
  nsIMsgDBHdrD  MessageURIToMsgHdr(char*uri){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.MessageURIToMsgHdr(uri, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

private:
  nsIMsgMessageService inner;

}


/* starting wrapper class:    nsIMsgMessageFetchPartService */
class nsIMsgMessageFetchPartServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMESSAGEFETCHPARTSERVICE_IID;


  alias nsIMsgMessageFetchPartService InnerType;

  this(nsIMsgMessageFetchPartService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMessageFetchPartService opCast() {
    return inner;
  }

  void opAssign(nsIMsgMessageFetchPartService value) {
    inner = value;
  }

  /* nsIURI fetchMimePart (in nsIURI aURI, in string aMessageUri, in nsISupports aDisplayConsumer, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsIURID  FetchMimePart(nsIURID aURI, char*aMessageUri, nsISupportsD aDisplayConsumer, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.FetchMimePart(aURI ? cast(nsIURI)aURI : null, aMessageUri, aDisplayConsumer ? cast(nsISupports)aDisplayConsumer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIMsgMessageFetchPartService inner;

}

