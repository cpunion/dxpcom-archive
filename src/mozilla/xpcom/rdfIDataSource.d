/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfIDataSource.idl
 */

module mozilla.xpcom.rdfIDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.rdfITripleVisitor; /* forward declaration */


/* starting interface:    rdfIDataSource */
const char[] RDFIDATASOURCE_IID_STR = "ebce86bd-1568-4a34-a808-9ccf9cde8087";

const nsIID RDFIDATASOURCE_IID= 
  {0xebce86bd, 0x1568, 0x4a34, 
    [ 0xa8, 0x08, 0x9c, 0xcf, 0x9c, 0xde, 0x80, 0x87 ]};

/**
 * Interface used in RDF to describe data sources.
 *
 * @status PLASMA
 */
extern(Windows)
interface rdfIDataSource : nsISupports {
  static const char[] IID_STR = RDFIDATASOURCE_IID_STR;
  static const nsIID IID = RDFIDATASOURCE_IID;

  /**
     * Visit all the subject resources in the datasource. The order is
     * intederminate and may change from one invocation to the next.
     * The subjects will be in the aSubject argument in calls into
     * aVisitor, aPredicate and aObject will be null.
     * @note Implementations may throw NS_ERROR_NOT_IMPLEMENTED for
     * this method, but in this case RDF serializations of this
     * datasource will not be possible.
     */
  /* void visitAllSubjects (in rdfITripleVisitor aVisitor); */
  nsresult VisitAllSubjects(rdfITripleVisitor aVisitor);

  /**
     * Visit all the triples in the datasource. The order is
     * intederminate and may change from one invocation to the next.
     * @note Implementations may throw NS_ERROR_NOT_IMPLEMENTED for
     * this method, but in this case RDF serializations of this
     * datasource will not be possible.
     */
  /* void visitAllTriples (in rdfITripleVisitor aVisitor); */
  nsresult VisitAllTriples(rdfITripleVisitor aVisitor);

}

