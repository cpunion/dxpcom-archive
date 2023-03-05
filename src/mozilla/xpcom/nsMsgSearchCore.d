/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsMsgSearchCore.idl
 */

module mozilla.xpcom.nsMsgSearchCore;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIMsgHeaderParser; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsMsgSearchScope */
const char[] NS_MSGSEARCHSCOPE_IID_STR = "5fe70a74-304e-11d3-9be1-00a0c900d445";

const nsIID NS_MSGSEARCHSCOPE_IID= 
  {0x5fe70a74, 0x304e, 0x11d3, 
    [ 0x9b, 0xe1, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchScope {
  static const char[] IID_STR = NS_MSGSEARCHSCOPE_IID_STR;
  static const nsIID IID = NS_MSGSEARCHSCOPE_IID;

  enum { offlineMail = 0 };

  enum { offlineMailFilter = 1 };

  enum { onlineMail = 2 };

  enum { onlineMailFilter = 3 };

  enum { localNews = 4 };

  enum { news = 5 };

  enum { newsEx = 6 };

  enum { LDAP = 7 };

  enum { LocalAB = 8 };

  enum { allSearchableGroups = 9 };

  enum { newsFilter = 10 };

  enum { LocalABAnd = 11 };

  enum { LDAPAnd = 12 };

}

alias PRInt32 nsMsgSearchAttribValue;


/* starting interface:    nsMsgSearchAttrib */
const char[] NS_MSGSEARCHATTRIB_IID_STR = "68c8710a-304e-11d3-97bf-00a0c900d445";

const nsIID NS_MSGSEARCHATTRIB_IID= 
  {0x68c8710a, 0x304e, 0x11d3, 
    [ 0x97, 0xbf, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchAttrib {
  static const char[] IID_STR = NS_MSGSEARCHATTRIB_IID_STR;
  static const nsIID IID = NS_MSGSEARCHATTRIB_IID;

  enum { Default = -1 };

  enum { Subject = 0 };

  enum { Sender = 1 };

  enum { Body = 2 };

  enum { Date = 3 };

  enum { Priority = 4 };

  enum { MsgStatus = 5 };

  enum { To = 6 };

  enum { CC = 7 };

  enum { ToOrCC = 8 };

  enum { Location = 9 };

  enum { MessageKey = 10 };

  enum { AgeInDays = 11 };

  enum { FolderInfo = 12 };

  enum { Size = 13 };

  enum { AnyText = 14 };

  enum { Keywords = 15 };

  enum { Name = 16 };

  enum { DisplayName = 17 };

  enum { Nickname = 18 };

  enum { ScreenName = 19 };

  enum { Email = 20 };

  enum { AdditionalEmail = 21 };

  enum { PhoneNumber = 22 };

  enum { WorkPhone = 23 };

  enum { HomePhone = 24 };

  enum { Fax = 25 };

  enum { Pager = 26 };

  enum { Mobile = 27 };

  enum { City = 28 };

  enum { Street = 29 };

  enum { Title = 30 };

  enum { Organization = 31 };

  enum { Department = 32 };

  enum { HasAttachmentStatus = 46 };

  enum { JunkStatus = 47 };

  enum { Label = 48 };

  enum { OtherHeader = 49 };

  enum { kNumMsgSearchAttributes = 100 };

}

alias PRInt32 nsMsgSearchOpValue;


/* starting interface:    nsMsgSearchOp */
const char[] NS_MSGSEARCHOP_IID_STR = "82cc4518-304e-11d3-831d-00a0c900d445";

const nsIID NS_MSGSEARCHOP_IID= 
  {0x82cc4518, 0x304e, 0x11d3, 
    [ 0x83, 0x1d, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchOp {
  static const char[] IID_STR = NS_MSGSEARCHOP_IID_STR;
  static const nsIID IID = NS_MSGSEARCHOP_IID;

  enum { Contains = 0 };

  enum { DoesntContain = 1 };

  enum { Is = 2 };

  enum { Isnt = 3 };

  enum { IsEmpty = 4 };

  enum { IsBefore = 5 };

  enum { IsAfter = 6 };

  enum { IsHigherThan = 7 };

  enum { IsLowerThan = 8 };

  enum { BeginsWith = 9 };

  enum { EndsWith = 10 };

  enum { SoundsLike = 11 };

  enum { LdapDwim = 12 };

  enum { IsGreaterThan = 13 };

  enum { IsLessThan = 14 };

  enum { NameCompletion = 15 };

  enum { IsInAB = 16 };

  enum { IsntInAB = 17 };

  enum { kNumMsgSearchOperators = 18 };

}

alias PRInt32 nsMsgSearchWidgetValue;


/* starting interface:    nsMsgSearchWidget */
const char[] NS_MSGSEARCHWIDGET_IID_STR = "903dd2e8-304e-11d3-92e6-00a0c900d445";

const nsIID NS_MSGSEARCHWIDGET_IID= 
  {0x903dd2e8, 0x304e, 0x11d3, 
    [ 0x92, 0xe6, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchWidget {
  static const char[] IID_STR = NS_MSGSEARCHWIDGET_IID_STR;
  static const nsIID IID = NS_MSGSEARCHWIDGET_IID;

  enum { Text = 0 };

  enum { Date = 1 };

  enum { Menu = 2 };

  enum { Int = 3 };

  enum { None = 4 };

}

alias PRInt32 nsMsgSearchTypeValue;


/* starting interface:    nsMsgSearchType */
const char[] NS_MSGSEARCHTYPE_IID_STR = "964b7f32-304e-11d3-ae13-00a0c900d445";

const nsIID NS_MSGSEARCHTYPE_IID= 
  {0x964b7f32, 0x304e, 0x11d3, 
    [ 0xae, 0x13, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchType {
  static const char[] IID_STR = NS_MSGSEARCHTYPE_IID_STR;
  static const nsIID IID = NS_MSGSEARCHTYPE_IID;

  enum { None = 0 };

  enum { RootDSE = 1 };

  enum { Normal = 2 };

  enum { LdapVLV = 3 };

  enum { NameCompletion = 4 };

}

alias PRInt32 nsMsgSearchBooleanOperator;


/* starting interface:    nsMsgSearchBooleanOp */
const char[] NS_MSGSEARCHBOOLEANOP_IID_STR = "a37f3f4a-304e-11d3-8f94-00a0c900d445";

const nsIID NS_MSGSEARCHBOOLEANOP_IID= 
  {0xa37f3f4a, 0x304e, 0x11d3, 
    [ 0x8f, 0x94, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgSearchBooleanOp {
  static const char[] IID_STR = NS_MSGSEARCHBOOLEANOP_IID_STR;
  static const nsIID IID = NS_MSGSEARCHBOOLEANOP_IID;

  enum { BooleanOR = 0 };

  enum { BooleanAND = 1 };

}

