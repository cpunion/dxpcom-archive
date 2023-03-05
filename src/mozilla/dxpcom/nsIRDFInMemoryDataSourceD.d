/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFInMemoryDataSource.idl
 */

module mozilla.dxpcom.nsIRDFInMemoryDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFInMemoryDataSource;


public import mozilla.dxpcom.nsIRDFInMemoryDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    nsIRDFInMemoryDataSource */
class nsIRDFInMemoryDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFINMEMORYDATASOURCE_IID;


  alias nsIRDFInMemoryDataSource InnerType;

  this(nsIRDFInMemoryDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFInMemoryDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFInMemoryDataSource value) {
    inner = value;
  }

  /* void EnsureFastContainment (in nsIRDFResource aSource); */
  void EnsureFastContainment(nsIRDFResourceD aSource){
    nsresult __result = inner.EnsureFastContainment(aSource ? cast(nsIRDFResource)aSource : null);
    CheckException(__result);
  }

private:
  nsIRDFInMemoryDataSource inner;

}

