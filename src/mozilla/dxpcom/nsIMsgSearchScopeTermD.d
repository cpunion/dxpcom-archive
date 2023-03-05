/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchScopeTerm.idl
 */

module mozilla.dxpcom.nsIMsgSearchScopeTermD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchScopeTerm;


public import mozilla.dxpcom.nsIMsgSearchScopeTermD;

public import mozilla.xpcom.nsIMsgSearchSession;
public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsILineInputStream;

public import mozilla.dxpcom.nsILineInputStreamD;


/* starting wrapper class:    nsIMsgSearchScopeTerm */
class nsIMsgSearchScopeTermD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHSCOPETERM_IID;


  alias nsIMsgSearchScopeTerm InnerType;

  this(nsIMsgSearchScopeTerm intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchScopeTerm opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchScopeTerm value) {
    inner = value;
  }

  /* readonly attribute nsILocalFile mailFile; */
  nsILocalFileD  MailFile(){
    nsILocalFile value;
    nsresult __result = inner.GetMailFile(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /* attribute nsIInputStream inputStream; */
  nsIInputStreamD  InputStream(){
    nsIInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void InputStream(nsIInputStreamD  aInputStream){
    nsIInputStream value;
    nsresult __result = inner.SetInputStream(value);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /* readonly attribute nsIMsgSearchSession searchSession; */
  nsIMsgSearchSessionD  SearchSession(){
    nsIMsgSearchSession value;
    nsresult __result = inner.GetSearchSession(&value);
    CheckException(__result);
    return new nsIMsgSearchSessionD(value);
  }

private:
  nsIMsgSearchScopeTerm inner;

}

