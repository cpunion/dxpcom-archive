/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgRDFDataSource.idl
 */

module mozilla.dxpcom.nsIMsgRDFDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgRDFDataSource;


public import mozilla.dxpcom.nsIMsgRDFDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgRDFDataSource */
class nsIMsgRDFDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGRDFDATASOURCE_IID;


  alias nsIMsgRDFDataSource InnerType;

  this(nsIMsgRDFDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgRDFDataSource opCast() {
    return inner;
  }

  void opAssign(nsIMsgRDFDataSource value) {
    inner = value;
  }

  /* attribute nsIMsgWindow window; */
  nsIMsgWindowD  Window(){
    nsIMsgWindow value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }
  void Window(nsIMsgWindowD  aWindow){
    nsIMsgWindow value;
    nsresult __result = inner.SetWindow(value);
    CheckException(__result);
  }

private:
  nsIMsgRDFDataSource inner;

}

