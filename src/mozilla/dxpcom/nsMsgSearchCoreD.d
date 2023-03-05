/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsMsgSearchCore.idl
 */

module mozilla.dxpcom.nsMsgSearchCoreD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsMsgSearchCore;


public import mozilla.dxpcom.nsMsgSearchCoreD;

public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgHeaderParser;

public import mozilla.dxpcom.nsIMsgHeaderParserD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsMsgSearchScope */
class nsMsgSearchScopeD {

  static const nsIID IID = NS_MSGSEARCHSCOPE_IID;


  alias nsMsgSearchScope InnerType;

  this(nsMsgSearchScope intr){
    this.inner = intr;
  }

  nsMsgSearchScope opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchScope value) {
    inner = value;
  }

  enum { offlineMail = 0 }

  enum { offlineMailFilter = 1 }

  enum { onlineMail = 2 }

  enum { onlineMailFilter = 3 }

  enum { localNews = 4 }

  enum { news = 5 }

  enum { newsEx = 6 }

  enum { LDAP = 7 }

  enum { LocalAB = 8 }

  enum { allSearchableGroups = 9 }

  enum { newsFilter = 10 }

  enum { LocalABAnd = 11 }

  enum { LDAPAnd = 12 }

private:
  nsMsgSearchScope inner;

}


/* starting wrapper class:    nsMsgSearchAttrib */
class nsMsgSearchAttribD {

  static const nsIID IID = NS_MSGSEARCHATTRIB_IID;


  alias nsMsgSearchAttrib InnerType;

  this(nsMsgSearchAttrib intr){
    this.inner = intr;
  }

  nsMsgSearchAttrib opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchAttrib value) {
    inner = value;
  }

  enum { Default = -1 }

  enum { Subject = 0 }

  enum { Sender = 1 }

  enum { Body = 2 }

  enum { Date = 3 }

  enum { Priority = 4 }

  enum { MsgStatus = 5 }

  enum { To = 6 }

  enum { CC = 7 }

  enum { ToOrCC = 8 }

  enum { Location = 9 }

  enum { MessageKey = 10 }

  enum { AgeInDays = 11 }

  enum { FolderInfo = 12 }

  enum { Size = 13 }

  enum { AnyText = 14 }

  enum { Keywords = 15 }

  enum { Name = 16 }

  enum { DisplayName = 17 }

  enum { Nickname = 18 }

  enum { ScreenName = 19 }

  enum { Email = 20 }

  enum { AdditionalEmail = 21 }

  enum { PhoneNumber = 22 }

  enum { WorkPhone = 23 }

  enum { HomePhone = 24 }

  enum { Fax = 25 }

  enum { Pager = 26 }

  enum { Mobile = 27 }

  enum { City = 28 }

  enum { Street = 29 }

  enum { Title = 30 }

  enum { Organization = 31 }

  enum { Department = 32 }

  enum { HasAttachmentStatus = 46 }

  enum { JunkStatus = 47 }

  enum { Label = 48 }

  enum { OtherHeader = 49 }

  enum { kNumMsgSearchAttributes = 100 }

private:
  nsMsgSearchAttrib inner;

}


/* starting wrapper class:    nsMsgSearchOp */
class nsMsgSearchOpD {

  static const nsIID IID = NS_MSGSEARCHOP_IID;


  alias nsMsgSearchOp InnerType;

  this(nsMsgSearchOp intr){
    this.inner = intr;
  }

  nsMsgSearchOp opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchOp value) {
    inner = value;
  }

  enum { Contains = 0 }

  enum { DoesntContain = 1 }

  enum { Is = 2 }

  enum { Isnt = 3 }

  enum { IsEmpty = 4 }

  enum { IsBefore = 5 }

  enum { IsAfter = 6 }

  enum { IsHigherThan = 7 }

  enum { IsLowerThan = 8 }

  enum { BeginsWith = 9 }

  enum { EndsWith = 10 }

  enum { SoundsLike = 11 }

  enum { LdapDwim = 12 }

  enum { IsGreaterThan = 13 }

  enum { IsLessThan = 14 }

  enum { NameCompletion = 15 }

  enum { IsInAB = 16 }

  enum { IsntInAB = 17 }

  enum { kNumMsgSearchOperators = 18 }

private:
  nsMsgSearchOp inner;

}


/* starting wrapper class:    nsMsgSearchWidget */
class nsMsgSearchWidgetD {

  static const nsIID IID = NS_MSGSEARCHWIDGET_IID;


  alias nsMsgSearchWidget InnerType;

  this(nsMsgSearchWidget intr){
    this.inner = intr;
  }

  nsMsgSearchWidget opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchWidget value) {
    inner = value;
  }

  enum { Text = 0 }

  enum { Date = 1 }

  enum { Menu = 2 }

  enum { Int = 3 }

  enum { None = 4 }

private:
  nsMsgSearchWidget inner;

}


/* starting wrapper class:    nsMsgSearchType */
class nsMsgSearchTypeD {

  static const nsIID IID = NS_MSGSEARCHTYPE_IID;


  alias nsMsgSearchType InnerType;

  this(nsMsgSearchType intr){
    this.inner = intr;
  }

  nsMsgSearchType opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchType value) {
    inner = value;
  }

  enum { None = 0 }

  enum { RootDSE = 1 }

  enum { Normal = 2 }

  enum { LdapVLV = 3 }

  enum { NameCompletion = 4 }

private:
  nsMsgSearchType inner;

}


/* starting wrapper class:    nsMsgSearchBooleanOp */
class nsMsgSearchBooleanOpD {

  static const nsIID IID = NS_MSGSEARCHBOOLEANOP_IID;


  alias nsMsgSearchBooleanOp InnerType;

  this(nsMsgSearchBooleanOp intr){
    this.inner = intr;
  }

  nsMsgSearchBooleanOp opCast() {
    return inner;
  }

  void opAssign(nsMsgSearchBooleanOp value) {
    inner = value;
  }

  enum { BooleanOR = 0 }

  enum { BooleanAND = 1 }

private:
  nsMsgSearchBooleanOp inner;

}

