/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsMsgFilterCore.idl
 */

module mozilla.dxpcom.nsMsgFilterCoreD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsMsgFilterCore;


public import mozilla.dxpcom.nsMsgFilterCoreD;

public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;


/* starting wrapper class:    nsMsgFilterType */
class nsMsgFilterTypeD {

  static const nsIID IID = NS_MSGFILTERTYPE_IID;


  alias nsMsgFilterType InnerType;

  this(nsMsgFilterType intr){
    this.inner = intr;
  }

  nsMsgFilterType opCast() {
    return inner;
  }

  void opAssign(nsMsgFilterType value) {
    inner = value;
  }

  enum { InboxRule = 1 }

  enum { InboxJavaScript = 2 }

  enum { Inbox = 3 }

  enum { NewsRule = 4 }

  enum { NewsJavaScript = 8 }

  enum { News = 11 }

  enum { All = 15 }

private:
  nsMsgFilterType inner;

}


/* starting wrapper class:    nsMsgFilterAction */
class nsMsgFilterActionD {

  static const nsIID IID = NS_MSGFILTERACTION_IID;


  alias nsMsgFilterAction InnerType;

  this(nsMsgFilterAction intr){
    this.inner = intr;
  }

  nsMsgFilterAction opCast() {
    return inner;
  }

  void opAssign(nsMsgFilterAction value) {
    inner = value;
  }

  enum { None = 0 }

  enum { MoveToFolder = 1 }

  enum { ChangePriority = 2 }

  enum { Delete = 3 }

  enum { MarkRead = 4 }

  enum { KillThread = 5 }

  enum { WatchThread = 6 }

  enum { MarkFlagged = 7 }

  enum { Label = 8 }

  enum { Reply = 9 }

  enum { Forward = 10 }

  enum { StopExecution = 11 }

  enum { DeleteFromPop3Server = 12 }

  enum { LeaveOnPop3Server = 13 }

  enum { JunkScore = 14 }

  enum { FetchBodyFromPop3Server = 15 }

  enum { CopyToFolder = 16 }

  enum { AddTag = 17 }

private:
  nsMsgFilterAction inner;

}

