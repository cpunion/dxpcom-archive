/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMarkupDocumentViewer.idl
 */

module mozilla.dxpcom.nsIMarkupDocumentViewerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMarkupDocumentViewer;


public import mozilla.dxpcom.nsIMarkupDocumentViewerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIMarkupDocumentViewer */
class nsIMarkupDocumentViewerD : public nsISupportsD {

  static const nsIID IID = NS_IMARKUPDOCUMENTVIEWER_IID;


  alias nsIMarkupDocumentViewer InnerType;

  this(nsIMarkupDocumentViewer intr){
    super(intr);
    this.inner = intr;
  }

  nsIMarkupDocumentViewer opCast() {
    return inner;
  }

  void opAssign(nsIMarkupDocumentViewer value) {
    inner = value;
  }

  /* void scrollToNode (in nsIDOMNode node); */
  void ScrollToNode(nsIDOMNodeD node){
    nsresult __result = inner.ScrollToNode(node ? cast(nsIDOMNode)node : null);
    CheckException(__result);
  }

  /** The amount by which to scale all text. Default is 1.0. */
  /* attribute float textZoom; */
  float TextZoom(){
    float value;
    nsresult __result = inner.GetTextZoom(&value);
    CheckException(__result);
    return value;
  }
  void TextZoom(float aTextZoom){
    nsresult __result = inner.SetTextZoom(aTextZoom);
    CheckException(__result);
  }

  /** Disable entire author style level (including HTML presentation hints) */
  /* attribute boolean authorStyleDisabled; */
  PRBool AuthorStyleDisabled(){
    PRBool value;
    nsresult __result = inner.GetAuthorStyleDisabled(&value);
    CheckException(__result);
    return value;
  }
  void AuthorStyleDisabled(PRBool aAuthorStyleDisabled){
    nsresult __result = inner.SetAuthorStyleDisabled(aAuthorStyleDisabled);
    CheckException(__result);
  }

  /* attribute ACString defaultCharacterSet; */
  char[] DefaultCharacterSet(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDefaultCharacterSet(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DefaultCharacterSet(char[] aDefaultCharacterSet){
    scope auto value = new ACString(aDefaultCharacterSet);
    nsresult __result = inner.SetDefaultCharacterSet(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute ACString forceCharacterSet; */
  char[] ForceCharacterSet(){
    scope auto value = new ACString();
    nsresult __result = inner.GetForceCharacterSet(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ForceCharacterSet(char[] aForceCharacterSet){
    scope auto value = new ACString(aForceCharacterSet);
    nsresult __result = inner.SetForceCharacterSet(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute ACString hintCharacterSet; */
  char[] HintCharacterSet(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHintCharacterSet(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HintCharacterSet(char[] aHintCharacterSet){
    scope auto value = new ACString(aHintCharacterSet);
    nsresult __result = inner.SetHintCharacterSet(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute PRInt32 hintCharacterSetSource; */
  PRInt32 HintCharacterSetSource(){
    PRInt32 value;
    nsresult __result = inner.GetHintCharacterSetSource(&value);
    CheckException(__result);
    return value;
  }
  void HintCharacterSetSource(PRInt32 aHintCharacterSetSource){
    PRInt32 value;
    nsresult __result = inner.SetHintCharacterSetSource(value);
    CheckException(__result);
  }

  /* attribute ACString prevDocCharacterSet; */
  char[] PrevDocCharacterSet(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPrevDocCharacterSet(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void PrevDocCharacterSet(char[] aPrevDocCharacterSet){
    scope auto value = new ACString(aPrevDocCharacterSet);
    nsresult __result = inner.SetPrevDocCharacterSet(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
	* Tell the container to shrink-to-fit or grow-to-fit its contents
	*/
  /* void sizeToContent (); */
  void SizeToContent(){
    nsresult __result = inner.SizeToContent();
    CheckException(__result);
  }

  /**
   * Options for Bidi presentation.
   *
   * Use these attributes to access the individual Bidi options.
   */
/**
   * bidiTextDirection: the default direction for the layout of bidirectional text.
   *                    1 - left to right
   *                    2 - right to left
   */
  /* attribute octet bidiTextDirection; */
  PRUint8 BidiTextDirection(){
    PRUint8 value;
    nsresult __result = inner.GetBidiTextDirection(&value);
    CheckException(__result);
    return value;
  }
  void BidiTextDirection(PRUint8 aBidiTextDirection){
    nsresult __result = inner.SetBidiTextDirection(aBidiTextDirection);
    CheckException(__result);
  }

  /**
   * bidiTextType: the ordering of bidirectional text. This may be either "logical"
   * or "visual". Logical text will be reordered for presentation using the Unicode
   * Bidi Algorithm. Visual text will be displayed without reordering. 
   *               1 - the default order for the charset
   *               2 - logical order
   *               3 - visual order
   */
  /* attribute octet bidiTextType; */
  PRUint8 BidiTextType(){
    PRUint8 value;
    nsresult __result = inner.GetBidiTextType(&value);
    CheckException(__result);
    return value;
  }
  void BidiTextType(PRUint8 aBidiTextType){
    nsresult __result = inner.SetBidiTextType(aBidiTextType);
    CheckException(__result);
  }

  /**
   * bidiControlsTextMode: the order of bidirectional text in form controls.
   *                       1 - logical
   *                       2 - visual
   *                       3 - like the containing document
   */
  /* attribute octet bidiControlsTextMode; */
  PRUint8 BidiControlsTextMode(){
    PRUint8 value;
    nsresult __result = inner.GetBidiControlsTextMode(&value);
    CheckException(__result);
    return value;
  }
  void BidiControlsTextMode(PRUint8 aBidiControlsTextMode){
    nsresult __result = inner.SetBidiControlsTextMode(aBidiControlsTextMode);
    CheckException(__result);
  }

  /**
   * bidiNumeral: the type of numerals to display. 
   *              1 - depending on context, default is Arabic numerals
   *              2 - depending on context, default is Hindi numerals
   *              3 - Arabic numerals
   *              4 - Hindi numerals
   */
  /* attribute octet bidiNumeral; */
  PRUint8 BidiNumeral(){
    PRUint8 value;
    nsresult __result = inner.GetBidiNumeral(&value);
    CheckException(__result);
    return value;
  }
  void BidiNumeral(PRUint8 aBidiNumeral){
    nsresult __result = inner.SetBidiNumeral(aBidiNumeral);
    CheckException(__result);
  }

  /**
   * bidiSupport: whether to use platform bidi support or Mozilla's bidi support
   *              1 - Use Mozilla's bidi support
   *              2 - Use the platform bidi support
   *              3 - Disable bidi support
   */
  /* attribute octet bidiSupport; */
  PRUint8 BidiSupport(){
    PRUint8 value;
    nsresult __result = inner.GetBidiSupport(&value);
    CheckException(__result);
    return value;
  }
  void BidiSupport(PRUint8 aBidiSupport){
    nsresult __result = inner.SetBidiSupport(aBidiSupport);
    CheckException(__result);
  }

  /**
   * bidiCharacterSet: whether to force the user's character set
   *                   1 - use the document character set
   *                   2 - use the character set chosen by the user
   */
  /* attribute octet bidiCharacterSet; */
  PRUint8 BidiCharacterSet(){
    PRUint8 value;
    nsresult __result = inner.GetBidiCharacterSet(&value);
    CheckException(__result);
    return value;
  }
  void BidiCharacterSet(PRUint8 aBidiCharacterSet){
    nsresult __result = inner.SetBidiCharacterSet(aBidiCharacterSet);
    CheckException(__result);
  }

  /**
   * Use this attribute to access all the Bidi options in one operation
   */
  /* attribute PRUint32 bidiOptions; */
  PRUint32 BidiOptions(){
    PRUint32 value;
    nsresult __result = inner.GetBidiOptions(&value);
    CheckException(__result);
    return value;
  }
  void BidiOptions(PRUint32 aBidiOptions){
    PRUint32 value;
    nsresult __result = inner.SetBidiOptions(value);
    CheckException(__result);
  }

private:
  nsIMarkupDocumentViewer inner;

}

