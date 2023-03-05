/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessorObsolete.idl
 */

module mozilla.dxpcom.nsIXSLTProcessorObsoleteD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXSLTProcessorObsolete;


public import mozilla.dxpcom.nsIXSLTProcessorObsoleteD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIXSLTProcessorObsolete */
/**
 * DEPRECATED! Don't use this interface! Use nsIXSLTProcessor instead!!
 */
class nsIXSLTProcessorObsoleteD : public nsISupportsD {

  static const nsIID IID = NS_IXSLTPROCESSOROBSOLETE_IID;


  alias nsIXSLTProcessorObsolete InnerType;

  this(nsIXSLTProcessorObsolete intr){
    super(intr);
    this.inner = intr;
  }

  nsIXSLTProcessorObsolete opCast() {
    return inner;
  }

  void opAssign(nsIXSLTProcessorObsolete value) {
    inner = value;
  }

  /* void transformDocument (in nsIDOMNode aSourceDOM, in nsIDOMNode aStyleDOM, in nsIDOMDocument aOutputDOC, in nsISupports aObserver); */
  void TransformDocument(nsIDOMNodeD aSourceDOM, nsIDOMNodeD aStyleDOM, nsIDOMDocumentD aOutputDOC, nsISupportsD aObserver){
    nsresult __result = inner.TransformDocument(aSourceDOM ? cast(nsIDOMNode)aSourceDOM : null, aStyleDOM ? cast(nsIDOMNode)aStyleDOM : null, aOutputDOC ? cast(nsIDOMDocument)aOutputDOC : null, aObserver ? cast(nsISupports)aObserver : null);
    CheckException(__result);
  }

private:
  nsIXSLTProcessorObsolete inner;

}

