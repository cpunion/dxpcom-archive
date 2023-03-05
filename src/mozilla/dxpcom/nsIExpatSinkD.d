/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExpatSink.idl
 */

module mozilla.dxpcom.nsIExpatSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExpatSink;


public import mozilla.dxpcom.nsIExpatSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIExpatSink */
/**
 * This interface should be implemented by any content sink that wants
 * to get output from expat and do something with it; in other words,
 * by any sink that handles some sort of XML dialect.
 */
class nsIExpatSinkD : public nsISupportsD {

  static const nsIID IID = NS_IEXPATSINK_IID;


  alias nsIExpatSink InnerType;

  this(nsIExpatSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIExpatSink opCast() {
    return inner;
  }

  void opAssign(nsIExpatSink value) {
    inner = value;
  }

  /**
   * Called to handle the opening tag of an element.
   * @param aName the fully qualified tagname of the element
   * @param aAtts the array of attribute names and values.  There are
   *        aAttsCount/2 names and aAttsCount/2 values, so the total number of
   *        elements in the array is aAttsCount.  The names and values
   *        alternate.  Thus, if we number attributes starting with 0,
   *        aAtts[2*k] is the name of the k-th attribute and aAtts[2*k+1] is
   *        the value of that attribute  Both explicitly specified attributes
   *        and attributes that are defined to have default values in a DTD are
   *        present in aAtts.
   * @param aAttsCount the number of elements in aAtts.
   * @param aIndex If the element has an attribute of type ID, then
   *        aAtts[aIndex] is the name of that attribute.  Otherwise, aIndex
   *        is -1
   * @param aLineNumber the line number of the start tag in the data stream.
   */
  /* void HandleStartElement (in wstring aName, [array, size_is (aAttsCount)] in wstring aAtts, in unsigned long aAttsCount, in long aIndex, in unsigned long aLineNumber); */
  void HandleStartElement(PRUnichar*aName, PRUnichar**aAtts, PRUint32 aAttsCount, PRInt32 aIndex, PRUint32 aLineNumber){
    nsresult __result = inner.HandleStartElement(aName, aAtts, aAttsCount, aIndex, aLineNumber);
    CheckException(__result);
  }

  /**
   * Called to handle the closing tag of an element.
   * @param aName the fully qualified tagname of the element
   */
  /* void HandleEndElement (in wstring aName); */
  void HandleEndElement(PRUnichar*aName){
    nsresult __result = inner.HandleEndElement(aName);
    CheckException(__result);
  }

  /**
   * Called to handle a comment
   * @param aCommentText the text of the comment (not including the
   *        "<!--" and "-->")
   */
  /* void HandleComment (in wstring aCommentText); */
  void HandleComment(PRUnichar*aCommentText){
    nsresult __result = inner.HandleComment(aCommentText);
    CheckException(__result);
  }

  /**
   * Called to handle a CDATA section
   * @param aData the text in the CDATA section.  This is null-terminated.
   * @param aLength the length of the aData string
   */
  /* void HandleCDataSection ([size_is (aLength)] in wstring aData, in unsigned long aLength); */
  void HandleCDataSection(PRUnichar*aData, PRUint32 aLength){
    nsresult __result = inner.HandleCDataSection(aData, aLength);
    CheckException(__result);
  }

  /**
   * Called to handle the doctype declaration
   */
  /* void HandleDoctypeDecl (in AString aSubset, in AString aName, in AString aSystemId, in AString aPublicId, in nsISupports aCatalogData); */
  void HandleDoctypeDecl(wchar[] aSubset, wchar[] aName, wchar[] aSystemId, wchar[] aPublicId, nsISupportsD aCatalogData){
    scope auto _aSubset = new AString(aSubset);
    scope auto _aName = new AString(aName);
    scope auto _aSystemId = new AString(aSystemId);
    scope auto _aPublicId = new AString(aPublicId);
    nsresult __result = inner.HandleDoctypeDecl(cast(nsAString*)_aSubset, cast(nsAString*)_aName, cast(nsAString*)_aSystemId, cast(nsAString*)_aPublicId, aCatalogData ? cast(nsISupports)aCatalogData : null);
    CheckException(__result);
  }

  /**
   * Called to handle character data.  Note that this does NOT get
   * called for the contents of CDATA sections.
   * @param aData the data to handle.  aData is NOT NULL-TERMINATED.
   * @param aLength the length of the aData string
   */
  /* void HandleCharacterData ([size_is (aLength)] in wstring aData, in unsigned long aLength); */
  void HandleCharacterData(PRUnichar*aData, PRUint32 aLength){
    nsresult __result = inner.HandleCharacterData(aData, aLength);
    CheckException(__result);
  }

  /**
   * Called to handle a processing instruction
   * @param aTarget the PI target (e.g. xml-stylesheet)
   * @param aData all the rest of the data in the PI
   */
  /* void HandleProcessingInstruction (in wstring aTarget, in wstring aData); */
  void HandleProcessingInstruction(PRUnichar*aTarget, PRUnichar*aData){
    nsresult __result = inner.HandleProcessingInstruction(aTarget, aData);
    CheckException(__result);
  }

  /**
   * Handle the XML Declaration.
   *
   * @param aVersion    The version string, can be null if not specified.
   * @param aEncoding   The encoding string, can be null if not specified.
   * @param aStandalone -1, 0, or 1 indicating respectively that there was no
   *                    standalone parameter in the declaration, that it was
   *                    given as no, or that it was given as yes.
   */
  /* void HandleXMLDeclaration (in wstring aVersion, in wstring aEncoding, in long aStandalone); */
  void HandleXMLDeclaration(PRUnichar*aVersion, PRUnichar*aEncoding, PRInt32 aStandalone){
    nsresult __result = inner.HandleXMLDeclaration(aVersion, aEncoding, aStandalone);
    CheckException(__result);
  }

  /* void ReportError (in wstring aErrorText, in wstring aSourceText); */
  void ReportError(PRUnichar*aErrorText, PRUnichar*aSourceText){
    nsresult __result = inner.ReportError(aErrorText, aSourceText);
    CheckException(__result);
  }

private:
  nsIExpatSink inner;

}

