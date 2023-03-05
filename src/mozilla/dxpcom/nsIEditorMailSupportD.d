/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorMailSupport.idl
 */

module mozilla.dxpcom.nsIEditorMailSupportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorMailSupport;


public import mozilla.dxpcom.nsIEditorMailSupportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIEditorMailSupport */
class nsIEditorMailSupportD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORMAILSUPPORT_IID;


  alias nsIEditorMailSupport InnerType;

  this(nsIEditorMailSupport intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorMailSupport opCast() {
    return inner;
  }

  void opAssign(nsIEditorMailSupport value) {
    inner = value;
  }

  /** Paste the text in the OS clipboard at the cursor position,
    * as a quotation (whose representation is dependant on the editor type),
    * replacing the selected text (if any).
    * @param aSelectionType Text or html?
    */
  /* void pasteAsQuotation (in long aSelectionType); */
  void PasteAsQuotation(PRInt32 aSelectionType){
    nsresult __result = inner.PasteAsQuotation(aSelectionType);
    CheckException(__result);
  }

  /** Insert a string as quoted text
    * (whose representation is dependant on the editor type),
    * replacing the selected text (if any).
    * @param aQuotedText  The actual text to be quoted
    * @return             The node which was inserted
    */
  /* nsIDOMNode insertAsQuotation (in AString aQuotedText); */
  nsIDOMNodeD  InsertAsQuotation(wchar[] aQuotedText){
    scope auto _aQuotedText = new AString(aQuotedText);
    nsIDOMNode _retval;
    nsresult __result = inner.InsertAsQuotation(cast(nsAString*)_aQuotedText, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

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
  void InsertTextWithQuotations(wchar[] aStringToInsert){
    scope auto _aStringToInsert = new AString(aStringToInsert);
    nsresult __result = inner.InsertTextWithQuotations(cast(nsAString*)_aStringToInsert);
    CheckException(__result);
  }

  /** Paste a string as quoted text,
    * whose representation is dependant on the editor type,
    * replacing the selected text (if any)
    * @param aCitation    The "mid" URL of the source message
    * @param aSelectionType Text or html?
    */
  /* void pasteAsCitedQuotation (in AString aCitation, in long aSelectionType); */
  void PasteAsCitedQuotation(wchar[] aCitation, PRInt32 aSelectionType){
    scope auto _aCitation = new AString(aCitation);
    nsresult __result = inner.PasteAsCitedQuotation(cast(nsAString*)_aCitation, aSelectionType);
    CheckException(__result);
  }

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
  nsIDOMNodeD  InsertAsCitedQuotation(wchar[] aQuotedText, wchar[] aCitation, PRBool aInsertHTML){
    scope auto _aQuotedText = new AString(aQuotedText);
    scope auto _aCitation = new AString(aCitation);
    nsIDOMNode _retval;
    nsresult __result = inner.InsertAsCitedQuotation(cast(nsAString*)_aQuotedText, cast(nsAString*)_aCitation, aInsertHTML, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /**
   * Rewrap the selected part of the document, re-quoting if necessary.
   * @param aRespectNewlines  Try to maintain newlines in the original?
   */
  /* void rewrap (in boolean aRespectNewlines); */
  void Rewrap(PRBool aRespectNewlines){
    nsresult __result = inner.Rewrap(aRespectNewlines);
    CheckException(__result);
  }

  /**
   * Strip any citations in the selected part of the document.
   */
  /* void stripCites (); */
  void StripCites(){
    nsresult __result = inner.StripCites();
    CheckException(__result);
  }

  /**
   * Get a list of IMG and OBJECT tags in the current document.
   */
  /* nsISupportsArray getEmbeddedObjects (); */
  nsISupportsArrayD  GetEmbeddedObjects(){
    nsISupportsArray _retval;
    nsresult __result = inner.GetEmbeddedObjects(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

private:
  nsIEditorMailSupport inner;

}

