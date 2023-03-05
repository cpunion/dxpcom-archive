/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfITripleVisitor.idl
 */

module mozilla.xpcom.rdfITripleVisitor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsIRDFNode; /* forward declaration */


/* starting interface:    rdfITripleVisitor */
const char[] RDFITRIPLEVISITOR_IID_STR = "aafea151-c271-4505-9978-a100d292800c";

const nsIID RDFITRIPLEVISITOR_IID= 
  {0xaafea151, 0xc271, 0x4505, 
    [ 0x99, 0x78, 0xa1, 0x00, 0xd2, 0x92, 0x80, 0x0c ]};

/**
 * Interface used in RDF to enumerate triples.
 * Also used by rdfIDataSource::getAllSubjects, then aPredicate,
 * aObject and aTruthValue are ignored.
 *
 * @status PLASMA
 */
extern(Windows)
interface rdfITripleVisitor : nsISupports {
  static const char[] IID_STR = RDFITRIPLEVISITOR_IID_STR;
  static const nsIID IID = RDFITRIPLEVISITOR_IID;

  /**
     * Callback function for returning query results.
     *
     * @param aSubject, aPredicate, aObject describe the (sub-)arc
     * @returnCode NS_RDF_STOP_VISIT to stop iterating over the query result.
     *             Any error code will stop the iteration as well.
     */
  /* void visit (in nsIRDFNode aSubject, in nsIRDFResource aPredicate, in nsIRDFNode aObject, in boolean aTruthValue); */
  nsresult Visit(nsIRDFNode aSubject, nsIRDFResource aPredicate, nsIRDFNode aObject, PRBool aTruthValue);

}

