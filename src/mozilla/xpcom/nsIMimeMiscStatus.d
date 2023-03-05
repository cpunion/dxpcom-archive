/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeMiscStatus.idl
 */

module mozilla.xpcom.nsIMimeMiscStatus;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIMsgMailNewsUrl; /* forward declaration */

public import mozilla.xpcom.nsIStringEnumerator;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIWritablePropertyBag2; /* forward declaration */


/* starting interface:    nsIMimeMiscStatus */
const char[] NS_IMIMEMISCSTATUS_IID_STR = "4644fb25-5255-11d3-82b8-444553540002";

const nsIID NS_IMIMEMISCSTATUS_IID= 
  {0x4644fb25, 0x5255, 0x11d3, 
    [ 0x82, 0xb8, 0x44, 0x45, 0x53, 0x54, 0x00, 0x02 ]};

extern(Windows)
interface nsIMimeMiscStatus : nsISupports {
  static const char[] IID_STR = NS_IMIMEMISCSTATUS_IID_STR;
  static const nsIID IID = NS_IMIMEMISCSTATUS_IID;

  /* string GetWindowXULandJS (); */
  nsresult GetWindowXULandJS(char **_retval);

  /* string GetGlobalXULandJS (); */
  nsresult GetGlobalXULandJS(char **_retval);

  /* string GetIndividualXUL (in string aName, in string aHeader, in string aEmail); */
  nsresult GetIndividualXUL(char *aName, char *aHeader, char *aEmail, char **_retval);

  /* long GetMiscStatus (in string aName, in string aEmail); */
  nsresult GetMiscStatus(char *aName, char *aEmail, PRInt32 *_retval);

  /* string GetImageURL (in long aStatus); */
  nsresult GetImageURL(PRInt32 aStatus, char **_retval);

}


/* starting interface:    nsIMsgHeaderSink */
const char[] NS_IMSGHEADERSINK_IID_STR = "c3c4473c-fe01-4afc-bf91-c811baebef63";

const nsIID NS_IMSGHEADERSINK_IID= 
  {0xc3c4473c, 0xfe01, 0x4afc, 
    [ 0xbf, 0x91, 0xc8, 0x11, 0xba, 0xeb, 0xef, 0x63 ]};

extern(Windows)
interface nsIMsgHeaderSink : nsISupports {
  static const char[] IID_STR = NS_IMSGHEADERSINK_IID_STR;
  static const nsIID IID = NS_IMSGHEADERSINK_IID;

  /* void processHeaders (in nsIUTF8StringEnumerator aHeaderNames, in nsIUTF8StringEnumerator aHeaderValues, in boolean dontCollectAddress); */
  nsresult ProcessHeaders(nsIUTF8StringEnumerator aHeaderNames, nsIUTF8StringEnumerator aHeaderValues, PRBool dontCollectAddress);

  /* void handleAttachment (in string contentType, in string url, in wstring displayName, in string uri, in boolean aNotDownloaded); */
  nsresult HandleAttachment(char *contentType, char *url, PRUnichar *displayName, char *uri, PRBool aNotDownloaded);

  /* void onEndAllAttachments (); */
  nsresult OnEndAllAttachments();

  /* void onEndMsgHeaders (in nsIMsgMailNewsUrl url); */
  nsresult OnEndMsgHeaders(nsIMsgMailNewsUrl url);

  /* void onEndMsgDownload (in nsIMsgMailNewsUrl url); */
  nsresult OnEndMsgDownload(nsIMsgMailNewsUrl url);

  /* attribute nsISupports securityInfo; */
  nsresult GetSecurityInfo(nsISupports  *aSecurityInfo);
  nsresult SetSecurityInfo(nsISupports  aSecurityInfo);

  /* void onMsgHasRemoteContent (in nsIMsgDBHdr aMsgHdr); */
  nsresult OnMsgHasRemoteContent(nsIMsgDBHdr aMsgHdr);

  /* nsIMsgDBHdr getDummyMsgHeader (); */
  nsresult GetDummyMsgHeader(nsIMsgDBHdr *_retval);

  /* readonly attribute nsIWritablePropertyBag2 properties; */
  nsresult GetProperties(nsIWritablePropertyBag2  *aProperties);

}

