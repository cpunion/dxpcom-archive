/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpHeaderVisitor.idl
 */

module mozilla.dxpcom.nsIHttpHeaderVisitorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpHeaderVisitor;


public import mozilla.dxpcom.nsIHttpHeaderVisitorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIHttpHeaderVisitor */
/**
 * Implement this interface to visit http headers.
 *
 * @status FROZEN
 */
class nsIHttpHeaderVisitorD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPHEADERVISITOR_IID;


  alias nsIHttpHeaderVisitor InnerType;

  this(nsIHttpHeaderVisitor intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpHeaderVisitor opCast() {
    return inner;
  }

  void opAssign(nsIHttpHeaderVisitor value) {
    inner = value;
  }

  /**
     * Called by the nsIHttpChannel implementation when visiting request and
     * response headers.
     *
     * @param aHeader
     *        the header being visited.
     * @param aValue
     *        the header value (possibly a comma delimited list).
     *
     * @throw any exception to terminate enumeration
     */
  /* void visitHeader (in ACString aHeader, in ACString aValue); */
  void VisitHeader(char[] aHeader, char[] aValue){
    scope auto _aHeader = new ACString(aHeader);
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.VisitHeader(cast(nsACString*)_aHeader, cast(nsACString*)_aValue);
    CheckException(__result);
  }

private:
  nsIHttpHeaderVisitor inner;

}

