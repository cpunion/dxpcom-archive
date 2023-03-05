/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailNewsUrl.idl
 */

module mozilla.dxpcom.nsIMsgMailNewsUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMailNewsUrl;


public import mozilla.dxpcom.nsIMsgMailNewsUrlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIURL;
public import mozilla.dxpcom.nsIURLD;
public import mozilla.xpcom.nsIMimeMiscStatus;
public import mozilla.dxpcom.nsIMimeMiscStatusD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgStatusFeedback;

public import mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.xpcom.nsIMsgIncomingServer;

public import mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIMsgSearchSession;

public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsICacheEntryDescriptor;

public import mozilla.dxpcom.nsICacheEntryDescriptorD;

public import mozilla.xpcom.nsICacheSession;

public import mozilla.dxpcom.nsICacheSessionD;

public import mozilla.xpcom.nsIMimeHeaders;

public import mozilla.dxpcom.nsIMimeHeadersD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgMailNewsUrl */
class nsIMsgMailNewsUrlD : public nsIURLD {

  static const nsIID IID = NS_IMSGMAILNEWSURL_IID;


  alias nsIMsgMailNewsUrl InnerType;

  this(nsIMsgMailNewsUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMailNewsUrl opCast() {
    return inner;
  }

  void opAssign(nsIMsgMailNewsUrl value) {
    inner = value;
  }

  /* void RegisterListener (in nsIUrlListener aUrlListener); */
  void RegisterListener(nsIUrlListenerD aUrlListener){
    nsresult __result = inner.RegisterListener(aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void UnRegisterListener (in nsIUrlListener aUrlListener); */
  void UnRegisterListener(nsIUrlListenerD aUrlListener){
    nsresult __result = inner.UnRegisterListener(aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* readonly attribute nsIURI baseURI; */
  nsIURID  BaseURI(){
    nsIURI value;
    nsresult __result = inner.GetBaseURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /* attribute string errorMessage; */
  char* ErrorMessage(){
    char* value;
    nsresult __result = inner.GetErrorMessage(&value);
    CheckException(__result);
    return value;
  }
  void ErrorMessage(char* aErrorMessage){
    nsresult __result = inner.SetErrorMessage(aErrorMessage);
    CheckException(__result);
  }

  /* void SetUrlState (in boolean runningUrl, in nsresult aStatusCode); */
  void SetUrlState(PRBool runningUrl, nsresult aStatusCode){
    nsresult __result = inner.SetUrlState(runningUrl, aStatusCode);
    CheckException(__result);
  }

  /* void GetUrlState (out boolean runningUrl); */
  void GetUrlState(out PRBool runningUrl){
    nsresult __result = inner.GetUrlState(&runningUrl);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgIncomingServer server; */
  nsIMsgIncomingServerD  Server(){
    nsIMsgIncomingServer value;
    nsresult __result = inner.GetServer(&value);
    CheckException(__result);
    return new nsIMsgIncomingServerD(value);
  }

  /* attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void Folder(nsIMsgFolderD  aFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetFolder(value);
    CheckException(__result);
  }

  /* attribute nsIMsgStatusFeedback statusFeedback; */
  nsIMsgStatusFeedbackD  StatusFeedback(){
    nsIMsgStatusFeedback value;
    nsresult __result = inner.GetStatusFeedback(&value);
    CheckException(__result);
    return new nsIMsgStatusFeedbackD(value);
  }
  void StatusFeedback(nsIMsgStatusFeedbackD  aStatusFeedback){
    nsIMsgStatusFeedback value;
    nsresult __result = inner.SetStatusFeedback(value);
    CheckException(__result);
  }

  /* attribute nsIMsgWindow msgWindow; */
  nsIMsgWindowD  MsgWindow(){
    nsIMsgWindow value;
    nsresult __result = inner.GetMsgWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }
  void MsgWindow(nsIMsgWindowD  aMsgWindow){
    nsIMsgWindow value;
    nsresult __result = inner.SetMsgWindow(value);
    CheckException(__result);
  }

  /* attribute nsIMimeHeaders mimeHeaders; */
  nsIMimeHeadersD  MimeHeaders(){
    nsIMimeHeaders value;
    nsresult __result = inner.GetMimeHeaders(&value);
    CheckException(__result);
    return new nsIMimeHeadersD(value);
  }
  void MimeHeaders(nsIMimeHeadersD  aMimeHeaders){
    nsIMimeHeaders value;
    nsresult __result = inner.SetMimeHeaders(value);
    CheckException(__result);
  }

  /* readonly attribute nsILoadGroup loadGroup; */
  nsILoadGroupD  LoadGroup(){
    nsILoadGroup value;
    nsresult __result = inner.GetLoadGroup(&value);
    CheckException(__result);
    return new nsILoadGroupD(value);
  }

  /* attribute nsIMsgSearchSession searchSession; */
  nsIMsgSearchSessionD  SearchSession(){
    nsIMsgSearchSession value;
    nsresult __result = inner.GetSearchSession(&value);
    CheckException(__result);
    return new nsIMsgSearchSessionD(value);
  }
  void SearchSession(nsIMsgSearchSessionD  aSearchSession){
    nsIMsgSearchSession value;
    nsresult __result = inner.SetSearchSession(value);
    CheckException(__result);
  }

  /* attribute boolean updatingFolder; */
  PRBool UpdatingFolder(){
    PRBool value;
    nsresult __result = inner.GetUpdatingFolder(&value);
    CheckException(__result);
    return value;
  }
  void UpdatingFolder(PRBool aUpdatingFolder){
    nsresult __result = inner.SetUpdatingFolder(aUpdatingFolder);
    CheckException(__result);
  }

  /* attribute boolean addToMemoryCache; */
  PRBool AddToMemoryCache(){
    PRBool value;
    nsresult __result = inner.GetAddToMemoryCache(&value);
    CheckException(__result);
    return value;
  }
  void AddToMemoryCache(PRBool aAddToMemoryCache){
    nsresult __result = inner.SetAddToMemoryCache(aAddToMemoryCache);
    CheckException(__result);
  }

  /* attribute boolean msgIsInLocalCache; */
  PRBool MsgIsInLocalCache(){
    PRBool value;
    nsresult __result = inner.GetMsgIsInLocalCache(&value);
    CheckException(__result);
    return value;
  }
  void MsgIsInLocalCache(PRBool aMsgIsInLocalCache){
    nsresult __result = inner.SetMsgIsInLocalCache(aMsgIsInLocalCache);
    CheckException(__result);
  }

  /* attribute boolean suppressErrorMsgs; */
  PRBool SuppressErrorMsgs(){
    PRBool value;
    nsresult __result = inner.GetSuppressErrorMsgs(&value);
    CheckException(__result);
    return value;
  }
  void SuppressErrorMsgs(PRBool aSuppressErrorMsgs){
    nsresult __result = inner.SetSuppressErrorMsgs(aSuppressErrorMsgs);
    CheckException(__result);
  }

  /* attribute nsICacheEntryDescriptor memCacheEntry; */
  nsICacheEntryDescriptorD  MemCacheEntry(){
    nsICacheEntryDescriptor value;
    nsresult __result = inner.GetMemCacheEntry(&value);
    CheckException(__result);
    return new nsICacheEntryDescriptorD(value);
  }
  void MemCacheEntry(nsICacheEntryDescriptorD  aMemCacheEntry){
    nsICacheEntryDescriptor value;
    nsresult __result = inner.SetMemCacheEntry(value);
    CheckException(__result);
  }

  /* attribute nsICacheSession imageCacheSession; */
  nsICacheSessionD  ImageCacheSession(){
    nsICacheSession value;
    nsresult __result = inner.GetImageCacheSession(&value);
    CheckException(__result);
    return new nsICacheSessionD(value);
  }
  void ImageCacheSession(nsICacheSessionD  aImageCacheSession){
    nsICacheSession value;
    nsresult __result = inner.SetImageCacheSession(value);
    CheckException(__result);
  }

  /* void cacheCacheEntry (in nsICacheEntryDescriptor cacheEntry); */
  void CacheCacheEntry(nsICacheEntryDescriptorD cacheEntry){
    nsresult __result = inner.CacheCacheEntry(cacheEntry ? cast(nsICacheEntryDescriptor)cacheEntry : null);
    CheckException(__result);
  }

  /* void removeCacheEntry (in nsICacheEntryDescriptor cacheEntry); */
  void RemoveCacheEntry(nsICacheEntryDescriptorD cacheEntry){
    nsresult __result = inner.RemoveCacheEntry(cacheEntry ? cast(nsICacheEntryDescriptor)cacheEntry : null);
    CheckException(__result);
  }

  enum { eCopy = 0U }

  enum { eMove = 1U }

  enum { eDisplay = 2U }

  /* boolean IsUrlType (in unsigned long type); */
  PRBool IsUrlType(PRUint32 type){
    PRBool _retval;
    nsresult __result = inner.IsUrlType(type, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIStreamListener getSaveAsListener (in boolean addDummyEnvelope, in nsIFileSpec aFileSpec); */
  nsIStreamListenerD  GetSaveAsListener(PRBool addDummyEnvelope, nsIFileSpecD aFileSpec){
    nsIStreamListener _retval;
    nsresult __result = inner.GetSaveAsListener(addDummyEnvelope, aFileSpec ? cast(nsIFileSpec)aFileSpec : null, &_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

  /* attribute nsIMsgHeaderSink msgHeaderSink; */
  nsIMsgHeaderSinkD  MsgHeaderSink(){
    nsIMsgHeaderSink value;
    nsresult __result = inner.GetMsgHeaderSink(&value);
    CheckException(__result);
    return new nsIMsgHeaderSinkD(value);
  }
  void MsgHeaderSink(nsIMsgHeaderSinkD  aMsgHeaderSink){
    nsIMsgHeaderSink value;
    nsresult __result = inner.SetMsgHeaderSink(value);
    CheckException(__result);
  }

private:
  nsIMsgMailNewsUrl inner;

}


/* starting wrapper class:    nsIMsgMessageUrl */
class nsIMsgMessageUrlD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMESSAGEURL_IID;


  alias nsIMsgMessageUrl InnerType;

  this(nsIMsgMessageUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMessageUrl opCast() {
    return inner;
  }

  void opAssign(nsIMsgMessageUrl value) {
    inner = value;
  }

  /* attribute string uri; */
  char* Uri(){
    char* value;
    nsresult __result = inner.GetUri(&value);
    CheckException(__result);
    return value;
  }
  void Uri(char* aUri){
    nsresult __result = inner.SetUri(aUri);
    CheckException(__result);
  }

  /* attribute nsIFileSpec messageFile; */
  nsIFileSpecD  MessageFile(){
    nsIFileSpec value;
    nsresult __result = inner.GetMessageFile(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void MessageFile(nsIFileSpecD  aMessageFile){
    nsIFileSpec value;
    nsresult __result = inner.SetMessageFile(value);
    CheckException(__result);
  }

  /* attribute boolean AddDummyEnvelope; */
  PRBool AddDummyEnvelope(){
    PRBool value;
    nsresult __result = inner.GetAddDummyEnvelope(&value);
    CheckException(__result);
    return value;
  }
  void AddDummyEnvelope(PRBool aAddDummyEnvelope){
    nsresult __result = inner.SetAddDummyEnvelope(aAddDummyEnvelope);
    CheckException(__result);
  }

  /* attribute boolean canonicalLineEnding; */
  PRBool CanonicalLineEnding(){
    PRBool value;
    nsresult __result = inner.GetCanonicalLineEnding(&value);
    CheckException(__result);
    return value;
  }
  void CanonicalLineEnding(PRBool aCanonicalLineEnding){
    nsresult __result = inner.SetCanonicalLineEnding(aCanonicalLineEnding);
    CheckException(__result);
  }

  /* attribute string originalSpec; */
  char* OriginalSpec(){
    char* value;
    nsresult __result = inner.GetOriginalSpec(&value);
    CheckException(__result);
    return value;
  }
  void OriginalSpec(char* aOriginalSpec){
    nsresult __result = inner.SetOriginalSpec(aOriginalSpec);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgDBHdr messageHeader; */
  nsIMsgDBHdrD  MessageHeader(){
    nsIMsgDBHdr value;
    nsresult __result = inner.GetMessageHeader(&value);
    CheckException(__result);
    return new nsIMsgDBHdrD(value);
  }

private:
  nsIMsgMessageUrl inner;

}


/* starting wrapper class:    nsIMsgI18NUrl */
class nsIMsgI18NUrlD : public nsISupportsD {

  static const nsIID IID = NS_IMSGI18NURL_IID;


  alias nsIMsgI18NUrl InnerType;

  this(nsIMsgI18NUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgI18NUrl opCast() {
    return inner;
  }

  void opAssign(nsIMsgI18NUrl value) {
    inner = value;
  }

  /* readonly attribute string folderCharset; */
  char* FolderCharset(){
    char* value;
    nsresult __result = inner.GetFolderCharset(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean folderCharsetOverride; */
  PRBool FolderCharsetOverride(){
    PRBool value;
    nsresult __result = inner.GetFolderCharsetOverride(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string charsetOverRide; */
  char* CharsetOverRide(){
    char* value;
    nsresult __result = inner.GetCharsetOverRide(&value);
    CheckException(__result);
    return value;
  }
  void CharsetOverRide(char* aCharsetOverRide){
    nsresult __result = inner.SetCharsetOverRide(aCharsetOverRide);
    CheckException(__result);
  }

private:
  nsIMsgI18NUrl inner;

}

