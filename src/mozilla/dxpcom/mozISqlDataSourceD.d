/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlDataSource.idl
 */

module mozilla.dxpcom.mozISqlDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlDataSource;


public import mozilla.dxpcom.mozISqlDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;


/* starting wrapper class:    mozISqlDataSource */
/**
 * @status UNDER_REVIEW
 */
class mozISqlDataSourceD : public nsISupportsD {

  static const nsIID IID = MOZISQLDATASOURCE_IID;


  alias mozISqlDataSource InnerType;

  this(mozISqlDataSource intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlDataSource opCast() {
    return inner;
  }

  void opAssign(mozISqlDataSource value) {
    inner = value;
  }

  /**
   * Retrieve the RDF resource associated with the specified row.
   *
   * @param aRowIndex   The row index.
   */
  /* nsIRDFResource getResourceAtIndex (in long aRowIndex); */
  nsIRDFResourceD  GetResourceAtIndex(PRInt32 aRowIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.GetResourceAtIndex(aRowIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
   * Retrieve the index associated with specified RDF resource.
   *
   * @param aResource   The resource.
   */
  /* long getIndexOfResource (in nsIRDFResource aResource); */
  PRInt32 GetIndexOfResource(nsIRDFResourceD aResource){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfResource(aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  mozISqlDataSource inner;

}

