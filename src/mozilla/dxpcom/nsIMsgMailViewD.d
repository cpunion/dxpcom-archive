/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailView.idl
 */

module mozilla.dxpcom.nsIMsgMailViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMailView;


public import mozilla.dxpcom.nsIMsgMailViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgSearchTerm;

public import mozilla.dxpcom.nsIMsgSearchTermD;


/* starting wrapper class:    nsIMsgMailView */
class nsIMsgMailViewD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMAILVIEW_IID;


  alias nsIMsgMailView InnerType;

  this(nsIMsgMailView intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMailView opCast() {
    return inner;
  }

  void opAssign(nsIMsgMailView value) {
    inner = value;
  }

  /* attribute wstring mailViewName; */
  PRUnichar* MailViewName(){
    PRUnichar* value;
    nsresult __result = inner.GetMailViewName(&value);
    CheckException(__result);
    return value;
  }
  void MailViewName(PRUnichar* aMailViewName){
    nsresult __result = inner.SetMailViewName(aMailViewName);
    CheckException(__result);
  }

  /* readonly attribute wstring prettyName; */
  PRUnichar* PrettyName(){
    PRUnichar* value;
    nsresult __result = inner.GetPrettyName(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsISupportsArray searchTerms; */
  nsISupportsArrayD  SearchTerms(){
    nsISupportsArray value;
    nsresult __result = inner.GetSearchTerms(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void SearchTerms(nsISupportsArrayD  aSearchTerms){
    nsISupportsArray value;
    nsresult __result = inner.SetSearchTerms(value);
    CheckException(__result);
  }

  /* void appendTerm (in nsIMsgSearchTerm term); */
  void AppendTerm(nsIMsgSearchTermD term){
    nsresult __result = inner.AppendTerm(term ? cast(nsIMsgSearchTerm)term : null);
    CheckException(__result);
  }

  /* nsIMsgSearchTerm createTerm (); */
  nsIMsgSearchTermD  CreateTerm(){
    nsIMsgSearchTerm _retval;
    nsresult __result = inner.CreateTerm(&_retval);
    CheckException(__result);
    return new nsIMsgSearchTermD(_retval);
  }

private:
  nsIMsgMailView inner;

}

