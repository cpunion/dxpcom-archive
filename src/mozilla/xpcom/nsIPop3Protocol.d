/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Protocol.idl
 */

module mozilla.xpcom.nsIPop3Protocol;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPop3Protocol */
const char[] NS_IPOP3PROTOCOL_IID_STR = "aebda729-c423-4113-ae36-2229fdc3b699";

const nsIID NS_IPOP3PROTOCOL_IID= 
  {0xaebda729, 0xc423, 0x4113, 
    [ 0xae, 0x36, 0x22, 0x29, 0xfd, 0xc3, 0xb6, 0x99 ]};

extern(Windows)
interface nsIPop3Protocol : nsISupports {
  static const char[] IID_STR = NS_IPOP3PROTOCOL_IID_STR;
  static const nsIID IID = NS_IPOP3PROTOCOL_IID;

  /* [noscript] void markMessages (in nsVoidArray aUidl); */
  nsresult MarkMessages(nsVoidArray * aUidl);

  /* boolean checkMessage (in string aUidl); */
  nsresult CheckMessage(char *aUidl, PRBool *_retval);

}

