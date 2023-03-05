/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFService.idl
 */

module mozilla.dxpcom.nsIRDFServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFService;


public import mozilla.dxpcom.nsIRDFServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFLiteral;
public import mozilla.dxpcom.nsIRDFLiteralD;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;


/* starting wrapper class:    nsIRDFService */
class nsIRDFServiceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFSERVICE_IID;


  alias nsIRDFService InnerType;

  this(nsIRDFService intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFService opCast() {
    return inner;
  }

  void opAssign(nsIRDFService value) {
    inner = value;
  }

  /* nsIRDFResource GetResource (in AUTF8String aURI); */
  nsIRDFResourceD  GetResource(char[] aURI){
    scope auto _aURI = new ACString(aURI);
    nsIRDFResource _retval;
    nsresult __result = inner.GetResource(cast(nsACString*)_aURI, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource GetUnicodeResource (in AString aURI); */
  nsIRDFResourceD  GetUnicodeResource(wchar[] aURI){
    scope auto _aURI = new AString(aURI);
    nsIRDFResource _retval;
    nsresult __result = inner.GetUnicodeResource(cast(nsAString*)_aURI, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFResource GetAnonymousResource (); */
  nsIRDFResourceD  GetAnonymousResource(){
    nsIRDFResource _retval;
    nsresult __result = inner.GetAnonymousResource(&_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /* nsIRDFLiteral GetLiteral (in wstring aValue); */
  nsIRDFLiteralD  GetLiteral(PRUnichar*aValue){
    nsIRDFLiteral _retval;
    nsresult __result = inner.GetLiteral(aValue, &_retval);
    CheckException(__result);
    return new nsIRDFLiteralD(_retval);
  }

  /* nsIRDFDate GetDateLiteral (in long long aValue); */
  nsIRDFDateD  GetDateLiteral(PRInt64 aValue){
    nsIRDFDate _retval;
    nsresult __result = inner.GetDateLiteral(aValue, &_retval);
    CheckException(__result);
    return new nsIRDFDateD(_retval);
  }

  /* nsIRDFInt GetIntLiteral (in long aValue); */
  nsIRDFIntD  GetIntLiteral(PRInt32 aValue){
    nsIRDFInt _retval;
    nsresult __result = inner.GetIntLiteral(aValue, &_retval);
    CheckException(__result);
    return new nsIRDFIntD(_retval);
  }

  /* [noscript] nsIRDFBlob getBlobLiteral (in const_octet_ptr aValue, in long aLength); */
  nsIRDFBlobD  GetBlobLiteral(PRUint8 * aValue, PRInt32 aLength){
    nsIRDFBlob _retval;
    nsresult __result = inner.GetBlobLiteral(aValue, aLength, &_retval);
    CheckException(__result);
    return new nsIRDFBlobD(_retval);
  }

  /* boolean IsAnonymousResource (in nsIRDFResource aResource); */
  PRBool IsAnonymousResource(nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsAnonymousResource(aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void RegisterResource (in nsIRDFResource aResource, in boolean aReplace); */
  void RegisterResource(nsIRDFResourceD aResource, PRBool aReplace){
    nsresult __result = inner.RegisterResource(aResource ? cast(nsIRDFResource)aResource : null, aReplace);
    CheckException(__result);
  }

  /* void UnregisterResource (in nsIRDFResource aResource); */
  void UnregisterResource(nsIRDFResourceD aResource){
    nsresult __result = inner.UnregisterResource(aResource ? cast(nsIRDFResource)aResource : null);
    CheckException(__result);
  }

  /* void RegisterDataSource (in nsIRDFDataSource aDataSource, in boolean aReplace); */
  void RegisterDataSource(nsIRDFDataSourceD aDataSource, PRBool aReplace){
    nsresult __result = inner.RegisterDataSource(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aReplace);
    CheckException(__result);
  }

  /* void UnregisterDataSource (in nsIRDFDataSource aDataSource); */
  void UnregisterDataSource(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.UnregisterDataSource(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

  /* nsIRDFDataSource GetDataSource (in string aURI); */
  nsIRDFDataSourceD  GetDataSource(char*aURI){
    nsIRDFDataSource _retval;
    nsresult __result = inner.GetDataSource(aURI, &_retval);
    CheckException(__result);
    return new nsIRDFDataSourceD(_retval);
  }

  /* nsIRDFDataSource GetDataSourceBlocking (in string aURI); */
  nsIRDFDataSourceD  GetDataSourceBlocking(char*aURI){
    nsIRDFDataSource _retval;
    nsresult __result = inner.GetDataSourceBlocking(aURI, &_retval);
    CheckException(__result);
    return new nsIRDFDataSourceD(_retval);
  }

private:
  nsIRDFService inner;

}

