/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExtendedExpatSink.idl
 */

module mozilla.dxpcom.nsIExtendedExpatSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExtendedExpatSink;


public import mozilla.dxpcom.nsIExtendedExpatSinkD;

public import mozilla.xpcom.nsIExpatSink;
public import mozilla.dxpcom.nsIExpatSinkD;


/* starting wrapper class:    nsIExtendedExpatSink */
/**
 * This interface provides notification of syntax-level events.
 */
class nsIExtendedExpatSinkD : public nsIExpatSinkD {

  static const nsIID IID = NS_IEXTENDEDEXPATSINK_IID;


  alias nsIExtendedExpatSink InnerType;

  this(nsIExtendedExpatSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIExtendedExpatSink opCast() {
    return inner;
  }

  void opAssign(nsIExtendedExpatSink value) {
    inner = value;
  }

  /**
   * Called at the beginning of the DTD, before any entity or notation
   * events.
   * @param aDoctypeName The document type name.
   * @param aSysid The declared system identifier for the external DTD subset,
   *               or null if none was declared.
   * @param aPubid The declared public identifier for the external DTD subset,
   *               or null if none was declared.
   */
  /* void handleStartDTD (in wstring aDoctypeName, in wstring aSysid, in wstring aPubid); */
  void HandleStartDTD(PRUnichar*aDoctypeName, PRUnichar*aSysid, PRUnichar*aPubid){
    nsresult __result = inner.HandleStartDTD(aDoctypeName, aSysid, aPubid);
    CheckException(__result);
  }

  /**
   * Called when a prefix mapping starts to be in-scope, before any
   * startElement events.
   * @param aPrefix The Namespace prefix being declared. An empty string
   *                is used for the default element namespace, which has
   *                no prefix.
   * @param aUri The Namespace URI the prefix is mapped to.
   */
  /* void handleStartNamespaceDecl (in wstring aPrefix, in wstring aUri); */
  void HandleStartNamespaceDecl(PRUnichar*aPrefix, PRUnichar*aUri){
    nsresult __result = inner.HandleStartNamespaceDecl(aPrefix, aUri);
    CheckException(__result);
  }

  /**
   * Called when a prefix mapping is no longer in-scope, after any
   * endElement events.
   * @param aPrefix The prefix that was being mapped. This is the empty string
   *                when a default mapping scope ends.
   */
  /* void handleEndNamespaceDecl (in wstring aPrefix); */
  void HandleEndNamespaceDecl(PRUnichar*aPrefix){
    nsresult __result = inner.HandleEndNamespaceDecl(aPrefix);
    CheckException(__result);
  }

  /**
   * This is called for a declaration of notation.  The base argument is
   * whatever was set by XML_SetBase. aNotationName will never be
   * null. The other arguments can be.
   * @param aNotationName The notation name.
   * @param aSysId The notation's system identifier, or null if none was given.
   * @param aPubId The notation's pubilc identifier, or null if none was given.
   */
  /* void handleNotationDecl (in wstring aNotationName, in wstring aSysid, in wstring aPubid); */
  void HandleNotationDecl(PRUnichar*aNotationName, PRUnichar*aSysid, PRUnichar*aPubid){
    nsresult __result = inner.HandleNotationDecl(aNotationName, aSysid, aPubid);
    CheckException(__result);
  }

  /**
   * This is called for a declaration of an unparsed (NDATA) entity.
   * aName, aSysid and aNotationName arguments will never be
   * null. The other arguments may be.
   * @param aName  The unparsed entity's name.
   * @param aSysId The notation's system identifier.
   * @param aPubId The notation's pubilc identifier, or null if none was given.
   * @param aNotationName The name of the associated notation.
   */
  /* void handleUnparsedEntityDecl (in wstring aName, in wstring aSysid, in wstring aPubid, in wstring aNotationName); */
  void HandleUnparsedEntityDecl(PRUnichar*aName, PRUnichar*aSysid, PRUnichar*aPubid, PRUnichar*aNotationName){
    nsresult __result = inner.HandleUnparsedEntityDecl(aName, aSysid, aPubid, aNotationName);
    CheckException(__result);
  }

private:
  nsIExtendedExpatSink inner;

}

