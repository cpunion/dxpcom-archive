/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpUrl.idl
 */

module mozilla.dxpcom.nsINntpUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINntpUrl;


public import mozilla.dxpcom.nsINntpUrlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsINNTPNewsgroupPost;

public import mozilla.dxpcom.nsINNTPNewsgroupPostD;


/* starting wrapper class:    nsINntpUrl */
class nsINntpUrlD : public nsISupportsD {

  static const nsIID IID = NS_INNTPURL_IID;


  alias nsINntpUrl InnerType;

  this(nsINntpUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsINntpUrl opCast() {
    return inner;
  }

  void opAssign(nsINntpUrl value) {
    inner = value;
  }

  /* attribute nsINNTPNewsgroupPost messageToPost; */
  nsINNTPNewsgroupPostD  MessageToPost(){
    nsINNTPNewsgroupPost value;
    nsresult __result = inner.GetMessageToPost(&value);
    CheckException(__result);
    return new nsINNTPNewsgroupPostD(value);
  }
  void MessageToPost(nsINNTPNewsgroupPostD  aMessageToPost){
    nsINNTPNewsgroupPost value;
    nsresult __result = inner.SetMessageToPost(value);
    CheckException(__result);
  }

  /* attribute nsNewsAction newsAction; */
  nsNewsAction NewsAction(){
    nsNewsAction value;
    nsresult __result = inner.GetNewsAction(&value);
    CheckException(__result);
    return value;
  }
  void NewsAction(nsNewsAction aNewsAction){
    nsNewsAction value;
    nsresult __result = inner.SetNewsAction(value);
    CheckException(__result);
  }

  /* attribute boolean getOldMessages; */
  PRBool GetOldMessages(){
    PRBool value;
    nsresult __result = inner.GetGetOldMessages(&value);
    CheckException(__result);
    return value;
  }
  void GetOldMessages(PRBool aGetOldMessages){
    nsresult __result = inner.SetGetOldMessages(aGetOldMessages);
    CheckException(__result);
  }

  enum { ActionUnknown = 0 }

  enum { ActionGetNewNews = 1 }

  enum { ActionFetchArticle = 2 }

  enum { ActionSaveMessageToDisk = 3 }

  enum { ActionCancelArticle = 4 }

  enum { ActionPostArticle = 5 }

  enum { ActionSearch = 6 }

  enum { ActionUpdateCounts = 7 }

  enum { ActionListGroups = 8 }

  enum { ActionFetchPart = 9 }

  enum { ActionAutoSubscribe = 10 }

  enum { ActionListIds = 11 }

private:
  nsINntpUrl inner;

}

