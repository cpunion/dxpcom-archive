/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxUrl.idl
 */

module mozilla.xpcom.nsIMailboxUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIFileSpec;

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

alias PRInt32 nsMailboxAction;


/* starting interface:    nsIMailboxUrl */
const char[] NS_IMAILBOXURL_IID_STR = "ae30b004-320c-4d2b-ab52-45d2c2dc2cce";

const nsIID NS_IMAILBOXURL_IID= 
  {0xae30b004, 0x320c, 0x4d2b, 
    [ 0xab, 0x52, 0x45, 0xd2, 0xc2, 0xdc, 0x2c, 0xce ]};

extern(Windows)
interface nsIMailboxUrl : nsISupports {
  static const char[] IID_STR = NS_IMAILBOXURL_IID_STR;
  static const nsIID IID = NS_IMAILBOXURL_IID;

  /* attribute nsIStreamListener mailboxParser; */
  nsresult GetMailboxParser(nsIStreamListener  *aMailboxParser);
  nsresult SetMailboxParser(nsIStreamListener  aMailboxParser);

  /* attribute nsIStreamListener mailboxCopyHandler; */
  nsresult GetMailboxCopyHandler(nsIStreamListener  *aMailboxCopyHandler);
  nsresult SetMailboxCopyHandler(nsIStreamListener  aMailboxCopyHandler);

  /* [noscript] readonly attribute nsFileSpecPtr fileSpec; */
  nsresult GetFileSpec(nsFileSpec * *aFileSpec);

  /* readonly attribute nsMsgKey messageKey; */
  nsresult GetMessageKey(nsMsgKey *aMessageKey);

  /* void setMoveCopyMsgKeys (out nsMsgKey keysToFlag, in long numKeys); */
  nsresult SetMoveCopyMsgKeys(nsMsgKey *keysToFlag, PRInt32 numKeys);

  /* void getMoveCopyMsgHdrForIndex (in unsigned long msgIndex, out nsIMsgDBHdr msgHdr); */
  nsresult GetMoveCopyMsgHdrForIndex(PRUint32 msgIndex, nsIMsgDBHdr *msgHdr);

  /* readonly attribute unsigned long numMoveCopyMsgs; */
  nsresult GetNumMoveCopyMsgs(PRUint32 *aNumMoveCopyMsgs);

  /* attribute unsigned long curMoveCopyMsgIndex; */
  nsresult GetCurMoveCopyMsgIndex(PRUint32 *aCurMoveCopyMsgIndex);
  nsresult SetCurMoveCopyMsgIndex(PRUint32 aCurMoveCopyMsgIndex);

  /* attribute unsigned long messageSize; */
  nsresult GetMessageSize(PRUint32 *aMessageSize);
  nsresult SetMessageSize(PRUint32 aMessageSize);

  /* attribute nsMailboxAction mailboxAction; */
  nsresult GetMailboxAction(nsMailboxAction *aMailboxAction);
  nsresult SetMailboxAction(nsMailboxAction aMailboxAction);

  enum { ActionParseMailbox = 0 };

  enum { ActionFetchMessage = 1 };

  enum { ActionCopyMessage = 2 };

  enum { ActionMoveMessage = 3 };

  enum { ActionSaveMessageToDisk = 4 };

  enum { ActionAppendMessageToDisk = 5 };

  enum { ActionFetchPart = 6 };

}

