/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExpatSink.idl
 */

module mozilla.xpcom.nsIExpatSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIExpatSink */
const char[] NS_IEXPATSINK_IID_STR = "1deea160-c661-11d5-84cc-0010a4e0c706";

const nsIID NS_IEXPATSINK_IID= 
  {0x1deea160, 0xc661, 0x11d5, 
    [ 0x84, 0xcc, 0x00, 0x10, 0xa4, 0xe0, 0xc7, 0x06 ]};

/**
 * This interface should be implemented by any content sink that wants
 * to get output from expat and do something with it; in other words,
 * by any sink that handles some sort of XML dialect.
 */
extern(Windows)
interface nsIExpatSink : nsISupports {
  static const char[] IID_STR = NS_IEXPATSINK_IID_STR;
  static const nsIID IID = NS_IEXPATSINK_IID;

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
  nsresult HandleStartElement(PRUnichar *aName, PRUnichar **aAtts, PRUint32 aAttsCount, PRInt32 aIndex, PRUint32 aLineNumber);

  /**
   * Called to handle the closing tag of an element.
   * @param aName the fully qualified tagname of the element
   */
  /* void HandleEndElement (in wstring aName); */
  nsresult HandleEndElement(PRUnichar *aName);

  /**
   * Called to handle a comment
   * @param aCommentText the text of the comment (not including the
   *        "<!--" and "-->")
   */
  /* void HandleComment (in wstring aCommentText); */
  nsresult HandleComment(PRUnichar *aCommentText);

  /**
   * Called to handle a CDATA section
   * @param aData the text in the CDATA section.  This is null-terminated.
   * @param aLength the length of the aData string
   */
  /* void HandleCDataSection ([size_is (aLength)] in wstring aData, in unsigned long aLength); */
  nsresult HandleCDataSection(PRUnichar *aData, PRUint32 aLength);

  /**
   * Called to handle the doctype declaration
   */
  /* void HandleDoctypeDecl (in AString aSubset, in AString aName, in AString aSystemId, in AString aPublicId, in nsISupports aCatalogData); */
  nsresult HandleDoctypeDecl(nsAString * aSubset, nsAString * aName, nsAString * aSystemId, nsAString * aPublicId, nsISupports aCatalogData);

  /**
   * Called to handle character data.  Note that this does NOT get
   * called for the contents of CDATA sections.
   * @param aData the data to handle.  aData is NOT NULL-TERMINATED.
   * @param aLength the length of the aData string
   */
  /* void HandleCharacterData ([size_is (aLength)] in wstring aData, in unsigned long aLength); */
  nsresult HandleCharacterData(PRUnichar *aData, PRUint32 aLength);

  /**
   * Called to handle a processing instruction
   * @param aTarget the PI target (e.g. xml-stylesheet)
   * @param aData all the rest of the data in the PI
   */
  /* void HandleProcessingInstruction (in wstring aTarget, in wstring aData); */
  nsresult HandleProcessingInstruction(PRUnichar *aTarget, PRUnichar *aData);

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
  nsresult HandleXMLDeclaration(PRUnichar *aVersion, PRUnichar *aEncoding, PRInt32 aStandalone);

  /* void ReportError (in wstring aErrorText, in wstring aSourceText); */
  nsresult ReportError(PRUnichar *aErrorText, PRUnichar *aSourceText);

}

