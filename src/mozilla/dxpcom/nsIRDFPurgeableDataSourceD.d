/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFPurgeableDataSource.idl
 */

module mozilla.dxpcom.nsIRDFPurgeableDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFPurgeableDataSource;


public import mozilla.dxpcom.nsIRDFPurgeableDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    nsIRDFPurgeableDataSource */
class nsIRDFPurgeableDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFPURGEABLEDATASOURCE_IID;


  alias nsIRDFPurgeableDataSource InnerType;

  this(nsIRDFPurgeableDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFPurgeableDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFPurgeableDataSource value) {
    inner = value;
  }

  /* boolean Mark (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  PRBool Mark(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget, PRBool aTruthValue){
    PRBool _retval;
    nsresult __result = inner.Mark(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null, aTruthValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Sweep (); */
  void Sweep(){
    nsresult __result = inner.Sweep();
    CheckException(__result);
  }

private:
  nsIRDFPurgeableDataSource inner;

}

