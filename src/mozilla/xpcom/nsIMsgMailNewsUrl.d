/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailNewsUrl.idl
 */

module mozilla.xpcom.nsIMsgMailNewsUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIURL;
public import mozilla.xpcom.nsIMimeMiscStatus;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgStatusFeedback; /* forward declaration */

public import mozilla.xpcom.nsIMsgIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchSession; /* forward declaration */

public import mozilla.xpcom.nsICacheEntryDescriptor; /* forward declaration */

public import mozilla.xpcom.nsICacheSession; /* forward declaration */

public import mozilla.xpcom.nsIMimeHeaders; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIMsgMailNewsUrl */
const char[] NS_IMSGMAILNEWSURL_IID_STR = "6cffceb0-cb8c-11d2-8065-006008128c4e";

const nsIID NS_IMSGMAILNEWSURL_IID= 
  {0x6cffceb0, 0xcb8c, 0x11d2, 
    [ 0x80, 0x65, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMsgMailNewsUrl : nsIURL {
  static const char[] IID_STR = NS_IMSGMAILNEWSURL_IID_STR;
  static const nsIID IID = NS_IMSGMAILNEWSURL_IID;

  /* void RegisterListener (in nsIUrlListener aUrlListener); */
  nsresult RegisterListener(nsIUrlListener aUrlListener);

  /* void UnRegisterListener (in nsIUrlListener aUrlListener); */
  nsresult UnRegisterListener(nsIUrlListener aUrlListener);

  /* readonly attribute nsIURI baseURI; */
  nsresult GetBaseURI(nsIURI  *aBaseURI);

  /* attribute string errorMessage; */
  nsresult GetErrorMessage(char * *aErrorMessage);
  nsresult SetErrorMessage(char * aErrorMessage);

  /* void SetUrlState (in boolean runningUrl, in nsresult aStatusCode); */
  nsresult SetUrlState(PRBool runningUrl, nsresult aStatusCode);

  /* void GetUrlState (out boolean runningUrl); */
  nsresult GetUrlState(PRBool *runningUrl);

  /* readonly attribute nsIMsgIncomingServer server; */
  nsresult GetServer(nsIMsgIncomingServer  *aServer);

  /* attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);
  nsresult SetFolder(nsIMsgFolder  aFolder);

  /* attribute nsIMsgStatusFeedback statusFeedback; */
  nsresult GetStatusFeedback(nsIMsgStatusFeedback  *aStatusFeedback);
  nsresult SetStatusFeedback(nsIMsgStatusFeedback  aStatusFeedback);

  /* attribute nsIMsgWindow msgWindow; */
  nsresult GetMsgWindow(nsIMsgWindow  *aMsgWindow);
  nsresult SetMsgWindow(nsIMsgWindow  aMsgWindow);

  /* attribute nsIMimeHeaders mimeHeaders; */
  nsresult GetMimeHeaders(nsIMimeHeaders  *aMimeHeaders);
  nsresult SetMimeHeaders(nsIMimeHeaders  aMimeHeaders);

  /* readonly attribute nsILoadGroup loadGroup; */
  nsresult GetLoadGroup(nsILoadGroup  *aLoadGroup);

  /* attribute nsIMsgSearchSession searchSession; */
  nsresult GetSearchSession(nsIMsgSearchSession  *aSearchSession);
  nsresult SetSearchSession(nsIMsgSearchSession  aSearchSession);

  /* attribute boolean updatingFolder; */
  nsresult GetUpdatingFolder(PRBool *aUpdatingFolder);
  nsresult SetUpdatingFolder(PRBool aUpdatingFolder);

  /* attribute boolean addToMemoryCache; */
  nsresult GetAddToMemoryCache(PRBool *aAddToMemoryCache);
  nsresult SetAddToMemoryCache(PRBool aAddToMemoryCache);

  /* attribute boolean msgIsInLocalCache; */
  nsresult GetMsgIsInLocalCache(PRBool *aMsgIsInLocalCache);
  nsresult SetMsgIsInLocalCache(PRBool aMsgIsInLocalCache);

  /* attribute boolean suppressErrorMsgs; */
  nsresult GetSuppressErrorMsgs(PRBool *aSuppressErrorMsgs);
  nsresult SetSuppressErrorMsgs(PRBool aSuppressErrorMsgs);

  /* attribute nsICacheEntryDescriptor memCacheEntry; */
  nsresult GetMemCacheEntry(nsICacheEntryDescriptor  *aMemCacheEntry);
  nsresult SetMemCacheEntry(nsICacheEntryDescriptor  aMemCacheEntry);

  /* attribute nsICacheSession imageCacheSession; */
  nsresult GetImageCacheSession(nsICacheSession  *aImageCacheSession);
  nsresult SetImageCacheSession(nsICacheSession  aImageCacheSession);

  /* void cacheCacheEntry (in nsICacheEntryDescriptor cacheEntry); */
  nsresult CacheCacheEntry(nsICacheEntryDescriptor cacheEntry);

  /* void removeCacheEntry (in nsICacheEntryDescriptor cacheEntry); */
  nsresult RemoveCacheEntry(nsICacheEntryDescriptor cacheEntry);

  enum { eCopy = 0U };

  enum { eMove = 1U };

  enum { eDisplay = 2U };

  /* boolean IsUrlType (in unsigned long type); */
  nsresult IsUrlType(PRUint32 type, PRBool *_retval);

  /* nsIStreamListener getSaveAsListener (in boolean addDummyEnvelope, in nsIFileSpec aFileSpec); */
  nsresult GetSaveAsListener(PRBool addDummyEnvelope, nsIFileSpec aFileSpec, nsIStreamListener *_retval);

  /* attribute nsIMsgHeaderSink msgHeaderSink; */
  nsresult GetMsgHeaderSink(nsIMsgHeaderSink  *aMsgHeaderSink);
  nsresult SetMsgHeaderSink(nsIMsgHeaderSink  aMsgHeaderSink);

}


/* starting interface:    nsIMsgMessageUrl */
const char[] NS_IMSGMESSAGEURL_IID_STR = "6beed963-0424-44c5-a605-c01f6dcbaac2";

const nsIID NS_IMSGMESSAGEURL_IID= 
  {0x6beed963, 0x0424, 0x44c5, 
    [ 0xa6, 0x05, 0xc0, 0x1f, 0x6d, 0xcb, 0xaa, 0xc2 ]};

extern(Windows)
interface nsIMsgMessageUrl : nsISupports {
  static const char[] IID_STR = NS_IMSGMESSAGEURL_IID_STR;
  static const nsIID IID = NS_IMSGMESSAGEURL_IID;

  /* attribute string uri; */
  nsresult GetUri(char * *aUri);
  nsresult SetUri(char * aUri);

  /* attribute nsIFileSpec messageFile; */
  nsresult GetMessageFile(nsIFileSpec  *aMessageFile);
  nsresult SetMessageFile(nsIFileSpec  aMessageFile);

  /* attribute boolean AddDummyEnvelope; */
  nsresult GetAddDummyEnvelope(PRBool *aAddDummyEnvelope);
  nsresult SetAddDummyEnvelope(PRBool aAddDummyEnvelope);

  /* attribute boolean canonicalLineEnding; */
  nsresult GetCanonicalLineEnding(PRBool *aCanonicalLineEnding);
  nsresult SetCanonicalLineEnding(PRBool aCanonicalLineEnding);

  /* attribute string originalSpec; */
  nsresult GetOriginalSpec(char * *aOriginalSpec);
  nsresult SetOriginalSpec(char * aOriginalSpec);

  /* readonly attribute nsIMsgDBHdr messageHeader; */
  nsresult GetMessageHeader(nsIMsgDBHdr  *aMessageHeader);

}


/* starting interface:    nsIMsgI18NUrl */
const char[] NS_IMSGI18NURL_IID_STR = "d71e0785-2862-11d4-98c1-001083010e9b";

const nsIID NS_IMSGI18NURL_IID= 
  {0xd71e0785, 0x2862, 0x11d4, 
    [ 0x98, 0xc1, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMsgI18NUrl : nsISupports {
  static const char[] IID_STR = NS_IMSGI18NURL_IID_STR;
  static const nsIID IID = NS_IMSGI18NURL_IID;

  /* readonly attribute string folderCharset; */
  nsresult GetFolderCharset(char * *aFolderCharset);

  /* readonly attribute boolean folderCharsetOverride; */
  nsresult GetFolderCharsetOverride(PRBool *aFolderCharsetOverride);

  /* attribute string charsetOverRide; */
  nsresult GetCharsetOverRide(char * *aCharsetOverRide);
  nsresult SetCharsetOverRide(char * aCharsetOverRide);

}

