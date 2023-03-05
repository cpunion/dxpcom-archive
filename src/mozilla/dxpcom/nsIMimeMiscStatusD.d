/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeMiscStatus.idl
 */

module mozilla.dxpcom.nsIMimeMiscStatusD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMimeMiscStatus;


public import mozilla.dxpcom.nsIMimeMiscStatusD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIMsgMailNewsUrl;

public import mozilla.dxpcom.nsIMsgMailNewsUrlD;

public import mozilla.xpcom.nsIStringEnumerator;

import mozilla.dxpcom.nsIStringEnumeratorD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIWritablePropertyBag2;

public import mozilla.dxpcom.nsIWritablePropertyBag2D;


/* starting wrapper class:    nsIMimeMiscStatus */
class nsIMimeMiscStatusD : public nsISupportsD {

  static const nsIID IID = NS_IMIMEMISCSTATUS_IID;


  alias nsIMimeMiscStatus InnerType;

  this(nsIMimeMiscStatus intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeMiscStatus opCast() {
    return inner;
  }

  void opAssign(nsIMimeMiscStatus value) {
    inner = value;
  }

  /* string GetWindowXULandJS (); */
  char* GetWindowXULandJS(){
    char* _retval;
    nsresult __result = inner.GetWindowXULandJS(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string GetGlobalXULandJS (); */
  char* GetGlobalXULandJS(){
    char* _retval;
    nsresult __result = inner.GetGlobalXULandJS(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string GetIndividualXUL (in string aName, in string aHeader, in string aEmail); */
  char* GetIndividualXUL(char*aName, char*aHeader, char*aEmail){
    char* _retval;
    nsresult __result = inner.GetIndividualXUL(aName, aHeader, aEmail, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetMiscStatus (in string aName, in string aEmail); */
  PRInt32 GetMiscStatus(char*aName, char*aEmail){
    PRInt32 _retval;
    nsresult __result = inner.GetMiscStatus(aName, aEmail, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string GetImageURL (in long aStatus); */
  char* GetImageURL(PRInt32 aStatus){
    char* _retval;
    nsresult __result = inner.GetImageURL(aStatus, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMimeMiscStatus inner;

}


/* starting wrapper class:    nsIMsgHeaderSink */
class nsIMsgHeaderSinkD : public nsISupportsD {

  static const nsIID IID = NS_IMSGHEADERSINK_IID;


  alias nsIMsgHeaderSink InnerType;

  this(nsIMsgHeaderSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgHeaderSink opCast() {
    return inner;
  }

  void opAssign(nsIMsgHeaderSink value) {
    inner = value;
  }

  /* void processHeaders (in nsIUTF8StringEnumerator aHeaderNames, in nsIUTF8StringEnumerator aHeaderValues, in boolean dontCollectAddress); */
  void ProcessHeaders(nsIUTF8StringEnumeratorD aHeaderNames, nsIUTF8StringEnumeratorD aHeaderValues, PRBool dontCollectAddress){
    nsresult __result = inner.ProcessHeaders(aHeaderNames ? cast(nsIUTF8StringEnumerator)aHeaderNames : null, aHeaderValues ? cast(nsIUTF8StringEnumerator)aHeaderValues : null, dontCollectAddress);
    CheckException(__result);
  }

  /* void handleAttachment (in string contentType, in string url, in wstring displayName, in string uri, in boolean aNotDownloaded); */
  void HandleAttachment(char*contentType, char*url, PRUnichar*displayName, char*uri, PRBool aNotDownloaded){
    nsresult __result = inner.HandleAttachment(contentType, url, displayName, uri, aNotDownloaded);
    CheckException(__result);
  }

  /* void onEndAllAttachments (); */
  void OnEndAllAttachments(){
    nsresult __result = inner.OnEndAllAttachments();
    CheckException(__result);
  }

  /* void onEndMsgHeaders (in nsIMsgMailNewsUrl url); */
  void OnEndMsgHeaders(nsIMsgMailNewsUrlD url){
    nsresult __result = inner.OnEndMsgHeaders(url ? cast(nsIMsgMailNewsUrl)url : null);
    CheckException(__result);
  }

  /* void onEndMsgDownload (in nsIMsgMailNewsUrl url); */
  void OnEndMsgDownload(nsIMsgMailNewsUrlD url){
    nsresult __result = inner.OnEndMsgDownload(url ? cast(nsIMsgMailNewsUrl)url : null);
    CheckException(__result);
  }

  /* attribute nsISupports securityInfo; */
  nsISupportsD  SecurityInfo(){
    nsISupports value;
    nsresult __result = inner.GetSecurityInfo(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void SecurityInfo(nsISupportsD  aSecurityInfo){
    nsISupports value;
    nsresult __result = inner.SetSecurityInfo(value);
    CheckException(__result);
  }

  /* void onMsgHasRemoteContent (in nsIMsgDBHdr aMsgHdr); */
  void OnMsgHasRemoteContent(nsIMsgDBHdrD aMsgHdr){
    nsresult __result = inner.OnMsgHasRemoteContent(aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null);
    CheckException(__result);
  }

  /* nsIMsgDBHdr getDummyMsgHeader (); */
  nsIMsgDBHdrD  GetDummyMsgHeader(){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetDummyMsgHeader(&_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* readonly attribute nsIWritablePropertyBag2 properties; */
  nsIWritablePropertyBag2D  Properties(){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.GetProperties(&value);
    CheckException(__result);
    return new nsIWritablePropertyBag2D(value);
  }

private:
  nsIMsgHeaderSink inner;

}

