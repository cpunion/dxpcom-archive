/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorMailSupport.idl
 */

module mozilla.xpcom.nsIEditorMailSupport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIEditorMailSupport */
const char[] NS_IEDITORMAILSUPPORT_IID_STR = "fdf23301-4a94-11d3-9ce4-9960496c41bc";

const nsIID NS_IEDITORMAILSUPPORT_IID= 
  {0xfdf23301, 0x4a94, 0x11d3, 
    [ 0x9c, 0xe4, 0x99, 0x60, 0x49, 0x6c, 0x41, 0xbc ]};

extern(Windows)
interface nsIEditorMailSupport : nsISupports {
  static const char[] IID_STR = NS_IEDITORMAILSUPPORT_IID_STR;
  static const nsIID IID = NS_IEDITORMAILSUPPORT_IID;

  /** Paste the text in the OS clipboard at the cursor position,
    * as a quotation (whose representation is dependant on the editor type),
    * replacing the selected text (if any).
    * @param aSelectionType Text or html?
    */
  /* void pasteAsQuotation (in long aSelectionType); */
  nsresult PasteAsQuotation(PRInt32 aSelectionType);

  /** Insert a string as quoted text
    * (whose representation is dependant on the editor type),
    * replacing the selected text (if any).
    * @param aQuotedText  The actual text to be quoted
    * @return             The node which was inserted
    */
  /* nsIDOMNode insertAsQuotation (in AString aQuotedText); */
  nsresult InsertAsQuotation(nsAString * aQuotedText, nsIDOMNode *_retval);

  /**
   * Inserts a plaintext string at the current location,
   * with special processing for lines beginning with ">",
   * which will be treated as mail quotes and inserted
   * as plaintext quoted blocks.
   * If the selection is not collapsed, the selection is deleted
   * and the insertion takes place at the resulting collapsed selection.
   *
   * @param aString   the string to be inserted
   */
  /* void insertTextWithQuotations (in DOMString aStringToInsert); */
  nsresult InsertTextWithQuotations(nsAString * aStringToInsert);

  /** Paste a string as quoted text,
    * whose representation is dependant on the editor type,
    * replacing the selected text (if any)
    * @param aCitation    The "mid" URL of the source message
    * @param aSelectionType Text or html?
    */
  /* void pasteAsCitedQuotation (in AString aCitation, in long aSelectionType); */
  nsresult PasteAsCitedQuotation(nsAString * aCitation, PRInt32 aSelectionType);

  /** Insert a string as quoted text
    * (whose representation is dependant on the editor type),
    * replacing the selected text (if any),
    * including, if possible, a "cite" attribute.
    * @param aQuotedText  The actual text to be quoted
    * @param aCitation    The "mid" URL of the source message
    * @param aInsertHTML  Insert as html?  (vs plaintext)
    * @return             The node which was inserted
    */
  /* nsIDOMNode insertAsCitedQuotation (in AString aQuotedText, in AString aCitation, in boolean aInsertHTML); */
  nsresult InsertAsCitedQuotation(nsAString * aQuotedText, nsAString * aCitation, PRBool aInsertHTML, nsIDOMNode *_retval);

  /**
   * Rewrap the selected part of the document, re-quoting if necessary.
   * @param aRespectNewlines  Try to maintain newlines in the original?
   */
  /* void rewrap (in boolean aRespectNewlines); */
  nsresult Rewrap(PRBool aRespectNewlines);

  /**
   * Strip any citations in the selected part of the document.
   */
  /* void stripCites (); */
  nsresult StripCites();

  /**
   * Get a list of IMG and OBJECT tags in the current document.
   */
  /* nsISupportsArray getEmbeddedObjects (); */
  nsresult GetEmbeddedObjects(nsISupportsArray *_retval);

}

