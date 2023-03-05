/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginStreamInfo.idl
 */

module mozilla.xpcom.nsIPluginStreamInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIPluginStreamInfo */
const char[] NS_IPLUGINSTREAMINFO_IID_STR = "ed7d4ca0-b005-11d2-adaa-00805f6dec49";

const nsIID NS_IPLUGINSTREAMINFO_IID= 
  {0xed7d4ca0, 0xb005, 0x11d2, 
    [ 0xad, 0xaa, 0x00, 0x80, 0x5f, 0x6d, 0xec, 0x49 ]};

extern(Windows)
interface nsIPluginStreamInfo : nsISupports {
  static const char[] IID_STR = NS_IPLUGINSTREAMINFO_IID_STR;
  static const nsIID IID = NS_IPLUGINSTREAMINFO_IID;

  /* readonly attribute nsMIMEType contentType; */
  nsresult GetContentType(nsMIMEType *aContentType);

  /* void isSeekable (out boolean aSeekable); */
  nsresult IsSeekable(PRBool *aSeekable);

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* readonly attribute unsigned long lastModified; */
  nsresult GetLastModified(PRUint32 *aLastModified);

  /* void getURL (out constCharPtr aURL); */
  nsresult GetURL(char * *aURL);

  /* void requestRead (in nsByteRangePtr aRangeList); */
  nsresult RequestRead(nsByteRange * aRangeList);

  /* attribute long streamOffset; */
  nsresult GetStreamOffset(PRInt32 *aStreamOffset);
  nsresult SetStreamOffset(PRInt32 aStreamOffset);

}

