/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfITripleVisitor.idl
 */

module mozilla.dxpcom.rdfITripleVisitorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.rdfITripleVisitor;


public import mozilla.dxpcom.rdfITripleVisitorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIRDFNode;

public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    rdfITripleVisitor */
/**
 * Interface used in RDF to enumerate triples.
 * Also used by rdfIDataSource::getAllSubjects, then aPredicate,
 * aObject and aTruthValue are ignored.
 *
 * @status PLASMA
 */
class rdfITripleVisitorD : public nsISupportsD {

  static const nsIID IID = RDFITRIPLEVISITOR_IID;


  alias rdfITripleVisitor InnerType;

  this(rdfITripleVisitor intr){
    super(intr);
    this.inner = intr;
  }

  rdfITripleVisitor opCast() {
    return inner;
  }

  void opAssign(rdfITripleVisitor value) {
    inner = value;
  }

  /**
     * Callback function for returning query results.
     *
     * @param aSubject, aPredicate, aObject describe the (sub-)arc
     * @returnCode NS_RDF_STOP_VISIT to stop iterating over the query result.
     *             Any error code will stop the iteration as well.
     */
  /* void visit (in nsIRDFNode aSubject, in nsIRDFResource aPredicate, in nsIRDFNode aObject, in boolean aTruthValue); */
  void Visit(nsIRDFNodeD aSubject, nsIRDFResourceD aPredicate, nsIRDFNodeD aObject, PRBool aTruthValue){
    nsresult __result = inner.Visit(aSubject ? cast(nsIRDFNode)aSubject : null, aPredicate ? cast(nsIRDFResource)aPredicate : null, aObject ? cast(nsIRDFNode)aObject : null, aTruthValue);
    CheckException(__result);
  }

private:
  rdfITripleVisitor inner;

}

