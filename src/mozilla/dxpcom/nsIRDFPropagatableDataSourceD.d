/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFPropagatableDataSource.idl
 */

module mozilla.dxpcom.nsIRDFPropagatableDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFPropagatableDataSource;


public import mozilla.dxpcom.nsIRDFPropagatableDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRDFPropagatableDataSource */
/**
 * An nsIRDFPropagatableDataSource provides an ability to suppress
 * synchronization notifications.
 */
class nsIRDFPropagatableDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFPROPAGATABLEDATASOURCE_IID;


  alias nsIRDFPropagatableDataSource InnerType;

  this(nsIRDFPropagatableDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFPropagatableDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFPropagatableDataSource value) {
    inner = value;
  }

  /**
   * Set this value to <code>true</code> to enable synchronization
   * notifications.
   *
   * Set this value to <code>false</code> to disable synchronization
   * notifications.
   *
   * By default, this value is <code>true</code>.
   */
  /* attribute boolean propagateChanges; */
  PRBool PropagateChanges(){
    PRBool value;
    nsresult __result = inner.GetPropagateChanges(&value);
    CheckException(__result);
    return value;
  }
  void PropagateChanges(PRBool aPropagateChanges){
    nsresult __result = inner.SetPropagateChanges(aPropagateChanges);
    CheckException(__result);
  }

private:
  nsIRDFPropagatableDataSource inner;

}

