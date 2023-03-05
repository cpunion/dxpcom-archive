/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgThread.idl
 */

module mozilla.xpcom.nsIMsgThread;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIDBChangeAnnouncer; /* forward declaration */


/* starting interface:    nsIMsgThread */
const char[] NS_IMSGTHREAD_IID_STR = "df64af90-e2da-11d2-8d6c-00805f8a6617";

const nsIID NS_IMSGTHREAD_IID= 
  {0xdf64af90, 0xe2da, 0x11d2, 
    [ 0x8d, 0x6c, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsIMsgThread : nsISupports {
  static const char[] IID_STR = NS_IMSGTHREAD_IID_STR;
  static const nsIID IID = NS_IMSGTHREAD_IID;

  /* attribute nsMsgKey threadKey; */
  nsresult GetThreadKey(nsMsgKey *aThreadKey);
  nsresult SetThreadKey(nsMsgKey aThreadKey);

  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /* attribute string subject; */
  nsresult GetSubject(char * *aSubject);
  nsresult SetSubject(char * aSubject);

  /* attribute unsigned long newestMsgDate; */
  nsresult GetNewestMsgDate(PRUint32 *aNewestMsgDate);
  nsresult SetNewestMsgDate(PRUint32 aNewestMsgDate);

  /* readonly attribute unsigned long numChildren; */
  nsresult GetNumChildren(PRUint32 *aNumChildren);

  /* readonly attribute unsigned long numUnreadChildren; */
  nsresult GetNumUnreadChildren(PRUint32 *aNumUnreadChildren);

  /* void AddChild (in nsIMsgDBHdr child, in nsIMsgDBHdr inReplyTo, in boolean threadInThread, in nsIDBChangeAnnouncer announcer); */
  nsresult AddChild(nsIMsgDBHdr child, nsIMsgDBHdr inReplyTo, PRBool threadInThread, nsIDBChangeAnnouncer announcer);

  /* nsIMsgDBHdr GetChildAt (in long index); */
  nsresult GetChildAt(PRInt32 index, nsIMsgDBHdr *_retval);

  /* nsMsgKey GetChildKeyAt (in long index); */
  nsresult GetChildKeyAt(PRInt32 index, nsMsgKey *_retval);

  /* nsIMsgDBHdr GetChild (in nsMsgKey msgKey); */
  nsresult GetChild(nsMsgKey msgKey, nsIMsgDBHdr *_retval);

  /* nsIMsgDBHdr GetChildHdrAt (in long index); */
  nsresult GetChildHdrAt(PRInt32 index, nsIMsgDBHdr *_retval);

  /* nsIMsgDBHdr GetRootHdr (out long index); */
  nsresult GetRootHdr(PRInt32 *index, nsIMsgDBHdr *_retval);

  /* void RemoveChildAt (in long index); */
  nsresult RemoveChildAt(PRInt32 index);

  /* void RemoveChildHdr (in nsIMsgDBHdr child, in nsIDBChangeAnnouncer announcer); */
  nsresult RemoveChildHdr(nsIMsgDBHdr child, nsIDBChangeAnnouncer announcer);

  /* void MarkChildRead (in boolean bRead); */
  nsresult MarkChildRead(PRBool bRead);

  /* nsIMsgDBHdr GetFirstUnreadChild (); */
  nsresult GetFirstUnreadChild(nsIMsgDBHdr *_retval);

  /* nsISimpleEnumerator EnumerateMessages (in nsMsgKey parent); */
  nsresult EnumerateMessages(nsMsgKey parent, nsISimpleEnumerator *_retval);

}

