/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapHeaderXferInfo.idl
 */

module mozilla.xpcom.nsIImapHeaderXferInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;


/* starting interface:    nsIImapHeaderInfo */
const char[] NS_IIMAPHEADERINFO_IID_STR = "38f8f784-b092-11d6-ba4b-00108335942a";

const nsIID NS_IIMAPHEADERINFO_IID= 
  {0x38f8f784, 0xb092, 0x11d6, 
    [ 0xba, 0x4b, 0x00, 0x10, 0x83, 0x35, 0x94, 0x2a ]};

extern(Windows)
interface nsIImapHeaderInfo : nsISupports {
  static const char[] IID_STR = NS_IIMAPHEADERINFO_IID_STR;
  static const nsIID IID = NS_IIMAPHEADERINFO_IID;

  /* attribute nsMsgKey msgUid; */
  nsresult GetMsgUid(nsMsgKey *aMsgUid);
  nsresult SetMsgUid(nsMsgKey aMsgUid);

  /* attribute long msgSize; */
  nsresult GetMsgSize(PRInt32 *aMsgSize);
  nsresult SetMsgSize(PRInt32 aMsgSize);

  /* [noscript] void getMsgHdrs ([shared] out string aMsgHdrs); */
  nsresult GetMsgHdrs(char **aMsgHdrs);

  /* void cacheLine (in string line, in unsigned long uid); */
  nsresult CacheLine(char *line, PRUint32 uid);

  /* void resetCache (); */
  nsresult ResetCache();

}


/* starting interface:    nsIImapHeaderXferInfo */
const char[] NS_IIMAPHEADERXFERINFO_IID_STR = "f0842eda-af29-4ecd-82e1-fba91bd65d66";

const nsIID NS_IIMAPHEADERXFERINFO_IID= 
  {0xf0842eda, 0xaf29, 0x4ecd, 
    [ 0x82, 0xe1, 0xfb, 0xa9, 0x1b, 0xd6, 0x5d, 0x66 ]};

extern(Windows)
interface nsIImapHeaderXferInfo : nsISupports {
  static const char[] IID_STR = NS_IIMAPHEADERXFERINFO_IID_STR;
  static const nsIID IID = NS_IIMAPHEADERXFERINFO_IID;

  /* readonly attribute long numHeaders; */
  nsresult GetNumHeaders(PRInt32 *aNumHeaders);

  /* nsIImapHeaderInfo getHeader (in long hdrIndex); */
  nsresult GetHeader(PRInt32 hdrIndex, nsIImapHeaderInfo *_retval);

}

