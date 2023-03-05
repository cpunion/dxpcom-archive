/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpHeaderVisitor.idl
 */

module mozilla.xpcom.nsIHttpHeaderVisitor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIHttpHeaderVisitor */
const char[] NS_IHTTPHEADERVISITOR_IID_STR = "0cf40717-d7c1-4a94-8c1e-d6c9734101bb";

const nsIID NS_IHTTPHEADERVISITOR_IID= 
  {0x0cf40717, 0xd7c1, 0x4a94, 
    [ 0x8c, 0x1e, 0xd6, 0xc9, 0x73, 0x41, 0x01, 0xbb ]};

/**
 * Implement this interface to visit http headers.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIHttpHeaderVisitor : nsISupports {
  static const char[] IID_STR = NS_IHTTPHEADERVISITOR_IID_STR;
  static const nsIID IID = NS_IHTTPHEADERVISITOR_IID;

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
  nsresult VisitHeader(nsACString * aHeader, nsACString * aValue);

}

