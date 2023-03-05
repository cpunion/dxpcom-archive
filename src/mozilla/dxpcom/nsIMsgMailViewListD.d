/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailViewList.idl
 */

module mozilla.dxpcom.nsIMsgMailViewListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMailViewList;


public import mozilla.dxpcom.nsIMsgMailViewListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgMailView;
public import mozilla.dxpcom.nsIMsgMailViewD;


/* starting wrapper class:    nsIMsgMailViewList */
class nsIMsgMailViewListD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMAILVIEWLIST_IID;


  alias nsIMsgMailViewList InnerType;

  this(nsIMsgMailViewList intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMailViewList opCast() {
    return inner;
  }

  void opAssign(nsIMsgMailViewList value) {
    inner = value;
  }

  /* readonly attribute unsigned long mailViewCount; */
  PRUint32 MailViewCount(){
    PRUint32 value;
    nsresult __result = inner.GetMailViewCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIMsgMailView getMailViewAt (in unsigned long mailViewIndex); */
  nsIMsgMailViewD  GetMailViewAt(PRUint32 mailViewIndex){
    nsIMsgMailView _retval;
    nsresult __result = inner.GetMailViewAt(mailViewIndex, &_retval);
    CheckException(__result);
    return new nsIMsgMailViewD(_retval);
  }

  /* void addMailView (in nsIMsgMailView mailView); */
  void AddMailView(nsIMsgMailViewD mailView){
    nsresult __result = inner.AddMailView(mailView ? cast(nsIMsgMailView)mailView : null);
    CheckException(__result);
  }

  /* void removeMailView (in nsIMsgMailView mailView); */
  void RemoveMailView(nsIMsgMailViewD mailView){
    nsresult __result = inner.RemoveMailView(mailView ? cast(nsIMsgMailView)mailView : null);
    CheckException(__result);
  }

  /* nsIMsgMailView createMailView (); */
  nsIMsgMailViewD  CreateMailView(){
    nsIMsgMailView _retval;
    nsresult __result = inner.CreateMailView(&_retval);
    CheckException(__result);
    return new nsIMsgMailViewD(_retval);
  }

  /* void save (); */
  void Save(){
    nsresult __result = inner.Save();
    CheckException(__result);
  }

private:
  nsIMsgMailViewList inner;

}

