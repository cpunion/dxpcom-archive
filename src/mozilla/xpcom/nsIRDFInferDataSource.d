/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFInferDataSource.idl
 */

module mozilla.xpcom.nsIRDFInferDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRDFDataSource;


/* starting interface:    nsIRDFInferDataSource */
const char[] NS_IRDFINFERDATASOURCE_IID_STR = "2b04860f-4017-40f6-8a57-784a1e35077a";

const nsIID NS_IRDFINFERDATASOURCE_IID= 
  {0x2b04860f, 0x4017, 0x40f6, 
    [ 0x8a, 0x57, 0x78, 0x4a, 0x1e, 0x35, 0x07, 0x7a ]};

/**
 * An nsIRDFInferDataSource is implemented by a infer engine. This
 * engine mimics assertions in addition to those in the baseDataSource
 * according to a particular vocabulary.
 * Infer engines have contract IDs in the form of
 * "@mozilla.org/rdf/infer-datasource;1?engine="
 */
extern(Windows)
interface nsIRDFInferDataSource : nsIRDFDataSource {
  static const char[] IID_STR = NS_IRDFINFERDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFINFERDATASOURCE_IID;

  /**
     *
     * The wrapped datasource.
     *
     * The InferDataSource contains all arcs from the wrapped
     * datasource plus those infered by the vocabulary implemented
     * by the InferDataSource.
     */
  /* attribute nsIRDFDataSource baseDataSource; */
  nsresult GetBaseDataSource(nsIRDFDataSource  *aBaseDataSource);
  nsresult SetBaseDataSource(nsIRDFDataSource  aBaseDataSource);

}

