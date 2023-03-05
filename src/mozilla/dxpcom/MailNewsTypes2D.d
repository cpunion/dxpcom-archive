/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM MailNewsTypes2.idl
 */

module mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.MailNewsTypes2;


public import mozilla.dxpcom.MailNewsTypes2D;

/* starting wrapper class:    nsMsgPriority */
class nsMsgPriorityD {

  static const nsIID IID = NS_MSGPRIORITY_IID;


  alias nsMsgPriority InnerType;

  this(nsMsgPriority intr){
    this.inner = intr;
  }

  nsMsgPriority opCast() {
    return inner;
  }

  void opAssign(nsMsgPriority value) {
    inner = value;
  }

  enum { notSet = 0 }

  enum { none = 1 }

  enum { lowest = 2 }

  enum { low = 3 }

  enum { normal = 4 }

  enum { high = 5 }

  enum { highest = 6 }

  enum { Default = 4 }

private:
  nsMsgPriority inner;

}

