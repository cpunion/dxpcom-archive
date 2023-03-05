/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsMsgFilterCore.idl
 */

module mozilla.xpcom.nsMsgFilterCore;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsMsgSearchCore;

alias PRInt32 nsMsgFilterTypeType;


/* starting interface:    nsMsgFilterType */
const char[] NS_MSGFILTERTYPE_IID_STR = "e9b548ba-304e-11d3-8b33-00a0c900d445";

const nsIID NS_MSGFILTERTYPE_IID= 
  {0xe9b548ba, 0x304e, 0x11d3, 
    [ 0x8b, 0x33, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgFilterType {
  static const char[] IID_STR = NS_MSGFILTERTYPE_IID_STR;
  static const nsIID IID = NS_MSGFILTERTYPE_IID;

  enum { InboxRule = 1 };

  enum { InboxJavaScript = 2 };

  enum { Inbox = 3 };

  enum { NewsRule = 4 };

  enum { NewsJavaScript = 8 };

  enum { News = 11 };

  enum { All = 15 };

}

alias PRInt32 nsMsgFilterMotionValue;

alias PRInt32 nsMsgFilterIndex;

alias PRInt32 nsMsgRuleActionType;


/* starting interface:    nsMsgFilterAction */
const char[] NS_MSGFILTERACTION_IID_STR = "59af7696-1e28-4642-a400-fa327ae0b8d8";

const nsIID NS_MSGFILTERACTION_IID= 
  {0x59af7696, 0x1e28, 0x4642, 
    [ 0xa4, 0x00, 0xfa, 0x32, 0x7a, 0xe0, 0xb8, 0xd8 ]};

extern(Windows)
interface nsMsgFilterAction {
  static const char[] IID_STR = NS_MSGFILTERACTION_IID_STR;
  static const nsIID IID = NS_MSGFILTERACTION_IID;

  enum { None = 0 };

  enum { MoveToFolder = 1 };

  enum { ChangePriority = 2 };

  enum { Delete = 3 };

  enum { MarkRead = 4 };

  enum { KillThread = 5 };

  enum { WatchThread = 6 };

  enum { MarkFlagged = 7 };

  enum { Label = 8 };

  enum { Reply = 9 };

  enum { Forward = 10 };

  enum { StopExecution = 11 };

  enum { DeleteFromPop3Server = 12 };

  enum { LeaveOnPop3Server = 13 };

  enum { JunkScore = 14 };

  enum { FetchBodyFromPop3Server = 15 };

  enum { CopyToFolder = 16 };

  enum { AddTag = 17 };

}

