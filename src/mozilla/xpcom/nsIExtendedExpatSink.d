/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExtendedExpatSink.idl
 */

module mozilla.xpcom.nsIExtendedExpatSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIExpatSink;


/* starting interface:    nsIExtendedExpatSink */
const char[] NS_IEXTENDEDEXPATSINK_IID_STR = "0c2dc80f-7aa4-467a-9454-b89dba0e0779";

const nsIID NS_IEXTENDEDEXPATSINK_IID= 
  {0x0c2dc80f, 0x7aa4, 0x467a, 
    [ 0x94, 0x54, 0xb8, 0x9d, 0xba, 0x0e, 0x07, 0x79 ]};

/**
 * This interface provides notification of syntax-level events.
 */
extern(Windows)
interface nsIExtendedExpatSink : nsIExpatSink {
  static const char[] IID_STR = NS_IEXTENDEDEXPATSINK_IID_STR;
  static const nsIID IID = NS_IEXTENDEDEXPATSINK_IID;

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
  nsresult HandleStartDTD(PRUnichar *aDoctypeName, PRUnichar *aSysid, PRUnichar *aPubid);

  /**
   * Called when a prefix mapping starts to be in-scope, before any
   * startElement events.
   * @param aPrefix The Namespace prefix being declared. An empty string
   *                is used for the default element namespace, which has
   *                no prefix.
   * @param aUri The Namespace URI the prefix is mapped to.
   */
  /* void handleStartNamespaceDecl (in wstring aPrefix, in wstring aUri); */
  nsresult HandleStartNamespaceDecl(PRUnichar *aPrefix, PRUnichar *aUri);

  /**
   * Called when a prefix mapping is no longer in-scope, after any
   * endElement events.
   * @param aPrefix The prefix that was being mapped. This is the empty string
   *                when a default mapping scope ends.
   */
  /* void handleEndNamespaceDecl (in wstring aPrefix); */
  nsresult HandleEndNamespaceDecl(PRUnichar *aPrefix);

  /**
   * This is called for a declaration of notation.  The base argument is
   * whatever was set by XML_SetBase. aNotationName will never be
   * null. The other arguments can be.
   * @param aNotationName The notation name.
   * @param aSysId The notation's system identifier, or null if none was given.
   * @param aPubId The notation's pubilc identifier, or null if none was given.
   */
  /* void handleNotationDecl (in wstring aNotationName, in wstring aSysid, in wstring aPubid); */
  nsresult HandleNotationDecl(PRUnichar *aNotationName, PRUnichar *aSysid, PRUnichar *aPubid);

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
  nsresult HandleUnparsedEntityDecl(PRUnichar *aName, PRUnichar *aSysid, PRUnichar *aPubid, PRUnichar *aNotationName);

}

