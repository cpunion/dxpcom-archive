/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgThread.idl
 */

module mozilla.dxpcom.nsIMsgThreadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgThread;


public import mozilla.dxpcom.nsIMsgThreadD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIDBChangeAnnouncer;

public import mozilla.dxpcom.nsIDBChangeAnnouncerD;


/* starting wrapper class:    nsIMsgThread */
class nsIMsgThreadD : public nsISupportsD {

  static const nsIID IID = NS_IMSGTHREAD_IID;


  alias nsIMsgThread InnerType;

  this(nsIMsgThread intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgThread opCast() {
    return inner;
  }

  void opAssign(nsIMsgThread value) {
    inner = value;
  }

  /* attribute nsMsgKey threadKey; */
  nsMsgKey ThreadKey(){
    nsMsgKey value;
    nsresult __result = inner.GetThreadKey(&value);
    CheckException(__result);
    return value;
  }
  void ThreadKey(nsMsgKey aThreadKey){
    nsMsgKey value;
    nsresult __result = inner.SetThreadKey(value);
    CheckException(__result);
  }

  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /* attribute string subject; */
  char* Subject(){
    char* value;
    nsresult __result = inner.GetSubject(&value);
    CheckException(__result);
    return value;
  }
  void Subject(char* aSubject){
    nsresult __result = inner.SetSubject(aSubject);
    CheckException(__result);
  }

  /* attribute unsigned long newestMsgDate; */
  PRUint32 NewestMsgDate(){
    PRUint32 value;
    nsresult __result = inner.GetNewestMsgDate(&value);
    CheckException(__result);
    return value;
  }
  void NewestMsgDate(PRUint32 aNewestMsgDate){
    nsresult __result = inner.SetNewestMsgDate(aNewestMsgDate);
    CheckException(__result);
  }

  /* readonly attribute unsigned long numChildren; */
  PRUint32 NumChildren(){
    PRUint32 value;
    nsresult __result = inner.GetNumChildren(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long numUnreadChildren; */
  PRUint32 NumUnreadChildren(){
    PRUint32 value;
    nsresult __result = inner.GetNumUnreadChildren(&value);
    CheckException(__result);
    return value;
  }

  /* void AddChild (in nsIMsgDBHdr child, in nsIMsgDBHdr inReplyTo, in boolean threadInThread, in nsIDBChangeAnnouncer announcer); */
  void AddChild(nsIMsgDBHdrD child, nsIMsgDBHdrD inReplyTo, PRBool threadInThread, nsIDBChangeAnnouncerD announcer){
    nsresult __result = inner.AddChild(child ? cast(nsIMsgDBHdr)child : null, inReplyTo ? cast(nsIMsgDBHdr)inReplyTo : null, threadInThread, announcer ? cast(nsIDBChangeAnnouncer)announcer : null);
    CheckException(__result);
  }

  /* nsIMsgDBHdr GetChildAt (in long index); */
  nsIMsgDBHdrD  GetChildAt(PRInt32 index){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetChildAt(index, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* nsMsgKey GetChildKeyAt (in long index); */
  nsMsgKey GetChildKeyAt(PRInt32 index){
    nsMsgKey _retval;
    nsresult __result = inner.GetChildKeyAt(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgDBHdr GetChild (in nsMsgKey msgKey); */
  nsIMsgDBHdrD  GetChild(nsMsgKey msgKey){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetChild(msgKey, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* nsIMsgDBHdr GetChildHdrAt (in long index); */
  nsIMsgDBHdrD  GetChildHdrAt(PRInt32 index){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetChildHdrAt(index, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* nsIMsgDBHdr GetRootHdr (out long index); */
  nsIMsgDBHdrD  GetRootHdr(out PRInt32 index){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetRootHdr(&index, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* void RemoveChildAt (in long index); */
  void RemoveChildAt(PRInt32 index){
    nsresult __result = inner.RemoveChildAt(index);
    CheckException(__result);
  }

  /* void RemoveChildHdr (in nsIMsgDBHdr child, in nsIDBChangeAnnouncer announcer); */
  void RemoveChildHdr(nsIMsgDBHdrD child, nsIDBChangeAnnouncerD announcer){
    nsresult __result = inner.RemoveChildHdr(child ? cast(nsIMsgDBHdr)child : null, announcer ? cast(nsIDBChangeAnnouncer)announcer : null);
    CheckException(__result);
  }

  /* void MarkChildRead (in boolean bRead); */
  void MarkChildRead(PRBool bRead){
    nsresult __result = inner.MarkChildRead(bRead);
    CheckException(__result);
  }

  /* nsIMsgDBHdr GetFirstUnreadChild (); */
  nsIMsgDBHdrD  GetFirstUnreadChild(){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetFirstUnreadChild(&_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* nsISimpleEnumerator EnumerateMessages (in nsMsgKey parent); */
  nsISimpleEnumeratorD  EnumerateMessages(nsMsgKey parent){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateMessages(parent, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIMsgThread inner;

}

