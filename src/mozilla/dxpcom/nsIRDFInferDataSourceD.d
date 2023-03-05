/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFInferDataSource.idl
 */

module mozilla.dxpcom.nsIRDFInferDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFInferDataSource;


public import mozilla.dxpcom.nsIRDFInferDataSourceD;

public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;


/* starting wrapper class:    nsIRDFInferDataSource */
/**
 * An nsIRDFInferDataSource is implemented by a infer engine. This
 * engine mimics assertions in addition to those in the baseDataSource
 * according to a particular vocabulary.
 * Infer engines have contract IDs in the form of
 * "@mozilla.org/rdf/infer-datasource;1?engine="
 */
class nsIRDFInferDataSourceD : public nsIRDFDataSourceD {

  static const nsIID IID = NS_IRDFINFERDATASOURCE_IID;


  alias nsIRDFInferDataSource InnerType;

  this(nsIRDFInferDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFInferDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFInferDataSource value) {
    inner = value;
  }

  /**
     *
     * The wrapped datasource.
     *
     * The InferDataSource contains all arcs from the wrapped
     * datasource plus those infered by the vocabulary implemented
     * by the InferDataSource.
     */
  /* attribute nsIRDFDataSource baseDataSource; */
  nsIRDFDataSourceD  BaseDataSource(){
    nsIRDFDataSource value;
    nsresult __result = inner.GetBaseDataSource(&value);
    CheckException(__result);
    return new nsIRDFDataSourceD(value);
  }
  void BaseDataSource(nsIRDFDataSourceD  aBaseDataSource){
    nsIRDFDataSource value;
    nsresult __result = inner.SetBaseDataSource(value);
    CheckException(__result);
  }

private:
  nsIRDFInferDataSource inner;

}

