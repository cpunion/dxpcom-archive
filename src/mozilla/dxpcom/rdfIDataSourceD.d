/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfIDataSource.idl
 */

module mozilla.dxpcom.rdfIDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.rdfIDataSource;


public import mozilla.dxpcom.rdfIDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.rdfITripleVisitor;

public import mozilla.dxpcom.rdfITripleVisitorD;


/* starting wrapper class:    rdfIDataSource */
/**
 * Interface used in RDF to describe data sources.
 *
 * @status PLASMA
 */
class rdfIDataSourceD : public nsISupportsD {

  static const nsIID IID = RDFIDATASOURCE_IID;


  alias rdfIDataSource InnerType;

  this(rdfIDataSource intr){
    super(intr);
    this.inner = intr;
  }

  rdfIDataSource opCast() {
    return inner;
  }

  void opAssign(rdfIDataSource value) {
    inner = value;
  }

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
  void VisitAllSubjects(rdfITripleVisitorD aVisitor){
    nsresult __result = inner.VisitAllSubjects(aVisitor ? cast(rdfITripleVisitor)aVisitor : null);
    CheckException(__result);
  }

  /**
     * Visit all the triples in the datasource. The order is
     * intederminate and may change from one invocation to the next.
     * @note Implementations may throw NS_ERROR_NOT_IMPLEMENTED for
     * this method, but in this case RDF serializations of this
     * datasource will not be possible.
     */
  /* void visitAllTriples (in rdfITripleVisitor aVisitor); */
  void VisitAllTriples(rdfITripleVisitorD aVisitor){
    nsresult __result = inner.VisitAllTriples(aVisitor ? cast(rdfITripleVisitor)aVisitor : null);
    CheckException(__result);
  }

private:
  rdfIDataSource inner;

}

