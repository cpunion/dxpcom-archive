/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM MailNewsTypes2.idl
 */

module mozilla.xpcom.MailNewsTypes2;


public import mozilla.xpcom.nsrootidl;
alias PRUint32 nsMsgKey;

alias PRUint32 nsMsgViewIndex;

alias PRInt32 nsMsgSearchScopeValue;

alias PRInt32 nsMsgPriorityValue;

alias PRUint32 nsMsgJunkStatus;


/* starting interface:    nsMsgPriority */
const char[] NS_MSGPRIORITY_IID_STR = "94c0d8d8-2045-11d3-8a8f-0060b0fc04d2";

const nsIID NS_MSGPRIORITY_IID= 
  {0x94c0d8d8, 0x2045, 0x11d3, 
    [ 0x8a, 0x8f, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsMsgPriority {
  static const char[] IID_STR = NS_MSGPRIORITY_IID_STR;
  static const nsIID IID = NS_MSGPRIORITY_IID;

  enum { notSet = 0 };

  enum { none = 1 };

  enum { lowest = 2 };

  enum { low = 3 };

  enum { normal = 4 };

  enum { high = 5 };

  enum { highest = 6 };

  enum { Default = 4 };

}

alias PRUint32 nsMsgLabelValue;

alias PRInt32 nsMsgViewSortOrderValue;

alias PRInt32 nsMsgViewSortTypeValue;

alias PRInt32 nsMsgViewTypeValue;

alias PRInt32 nsMsgViewFlagsTypeValue;

