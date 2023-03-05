/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLEditor.idl
 */

module mozilla.dxpcom.nsIHTMLEditorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHTMLEditor;


public import mozilla.dxpcom.nsIHTMLEditorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;


public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;

public import mozilla.xpcom.nsIContentFilter;

public import mozilla.dxpcom.nsIContentFilterD;


/* starting wrapper class:    nsIHTMLEditor */
class nsIHTMLEditorD : public nsISupportsD {

  static const nsIID IID = NS_IHTMLEDITOR_IID;


  alias nsIHTMLEditor InnerType;

  this(nsIHTMLEditor intr){
    super(intr);
    this.inner = intr;
  }

  nsIHTMLEditor opCast() {
    return inner;
  }

  void opAssign(nsIHTMLEditor value) {
    inner = value;
  }

  enum { eLeft = 0 }

  enum { eCenter = 1 }

  enum { eRight = 2 }

  enum { eJustify = 3 }

  /**
   * AddDefaultProperty() registers a default style property with the editor
   *
   * @param aProperty   the property to set by default
   * @param aAttribute  the attribute of the property, if applicable.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color"
   * @param aValue      if aAttribute is not null, the value of the attribute.
   *                    Example: aProperty="font", aAttribute="color",
   *                             aValue="0x00FFFF"
   */
  /* void addDefaultProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue); */
  void AddDefaultProperty(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.AddDefaultProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /**
   * RemoveDefaultProperty() unregisters a default style property with the editor
   *
   * @param aProperty   the property to remove from defaults
   * @param aAttribute  the attribute of the property, if applicable.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color"
   * @param aValue      if aAttribute is not null, the value of the attribute.
   *                    Example: aProperty="font", aAttribute="color",
   *                             aValue="0x00FFFF"
   */
  /* void removeDefaultProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue); */
  void RemoveDefaultProperty(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.RemoveDefaultProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /**
   * RemoveAllDefaultProperties() unregisters all default style properties with the editor
   *
   */
  /* void removeAllDefaultProperties (); */
  void RemoveAllDefaultProperties(){
    nsresult __result = inner.RemoveAllDefaultProperties();
    CheckException(__result);
  }

  /**
   * SetInlineProperty() sets the aggregate properties on the current selection
   *
   * @param aProperty   the property to set on the selection 
   * @param aAttribute  the attribute of the property, if applicable.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color"
   * @param aValue      if aAttribute is not null, the value of the attribute.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color",
   *                             aValue="0x00FFFF"
   */
  /* void setCSSInlineProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue); */
  void SetCSSInlineProperty(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetCSSInlineProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /* void setInlineProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue); */
  void SetInlineProperty(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetInlineProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /**
   * getInlineProperty() gets aggregate properties of the current selection.
   * All object in the current selection are scanned and their attributes are
   * represented in a list of Property object.
   *
   * @param aProperty   the property to get on the selection 
   * @param aAttribute  the attribute of the property, if applicable.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color"
   * @param aValue      if aAttribute is not null, the value of the attribute.
   *                    May be null.
   *                    Example: aProperty="font", aAttribute="color",
   *                             aValue="0x00FFFF"
   * @param aFirst      [OUT] PR_TRUE if the first text node in the
   *                          selection has the property
   * @param aAny        [OUT] PR_TRUE if any of the text nodes in the
   *                          selection have the property
   * @param aAll        [OUT] PR_TRUE if all of the text nodes in the
   *                          selection have the property
   */
  /* void getInlineProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue, out boolean aFirst, out boolean aAny, out boolean aAll); */
  void GetInlineProperty(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue, out PRBool aFirst, out PRBool aAny, out PRBool aAll){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.GetInlineProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue, &aFirst, &aAny, &aAll);
    CheckException(__result);
  }

  /* AString getInlinePropertyWithAttrValue (in nsIAtom aProperty, in AString aAttribute, in AString aValue, out boolean aFirst, out boolean aAny, out boolean aAll); */
  wchar[] GetInlinePropertyWithAttrValue(nsIAtomD aProperty, wchar[] aAttribute, wchar[] aValue, out PRBool aFirst, out PRBool aAny, out PRBool aAll){
    scope auto _aAttribute = new AString(aAttribute);
    scope auto _aValue = new AString(aValue);
    scope auto _retval = new AString;
    nsresult __result = inner.GetInlinePropertyWithAttrValue(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute, cast(nsAString*)_aValue, &aFirst, &aAny, &aAll, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * removeAllInlineProperties() deletes all the inline properties from all 
   * text in the current selection.
   */
  /* void removeAllInlineProperties (); */
  void RemoveAllInlineProperties(){
    nsresult __result = inner.RemoveAllInlineProperties();
    CheckException(__result);
  }

  /**
   * removeInlineProperty() deletes the properties from all text in the current
   * selection.  If aProperty is not set on the selection, nothing is done.
   *
   * @param aProperty   the property to remove from the selection 
   *                    All atoms are for normal HTML tags (e.g.:
   *                    nsIEditorProperty::font) except when you want to
   *                    remove just links and not named anchors.
   *                    For that, use nsIEditorProperty::href
   * @param aAttribute  the attribute of the property, if applicable.
   *                    May be null.
   *                    Example: aProperty=nsIEditorProptery::font,
   *                    aAttribute="color"
   *                    nsIEditProperty::allAttributes is special.
   *                    It indicates that all content-based text properties
   *                    are to be removed from the selection.
   */
  /* void removeInlineProperty (in nsIAtom aProperty, in AString aAttribute); */
  void RemoveInlineProperty(nsIAtomD aProperty, wchar[] aAttribute){
    scope auto _aAttribute = new AString(aAttribute);
    nsresult __result = inner.RemoveInlineProperty(aProperty ? cast(nsIAtom)aProperty : null, cast(nsAString*)_aAttribute);
    CheckException(__result);
  }

  /**
   *  Increase font size for text in selection by 1 HTML unit
   *  All existing text is scanned for existing <FONT SIZE> attributes
   *  so they will be incremented instead of inserting new <FONT> tag
   */
  /* void increaseFontSize (); */
  void IncreaseFontSize(){
    nsresult __result = inner.IncreaseFontSize();
    CheckException(__result);
  }

  /**
   *  Decrease font size for text in selection by 1 HTML unit
   *  All existing text is scanned for existing <FONT SIZE> attributes
   *  so they will be decreased instead of inserting new <FONT> tag
   */
  /* void decreaseFontSize (); */
  void DecreaseFontSize(){
    nsresult __result = inner.DecreaseFontSize();
    CheckException(__result);
  }

  /** 
   * canDrag decides if a drag should be started
   * (for example, based on the current selection and mousepoint).
   */
  /* boolean canDrag (in nsIDOMEvent aEvent); */
  PRBool CanDrag(nsIDOMEventD aEvent){
    PRBool _retval;
    nsresult __result = inner.CanDrag(aEvent ? cast(nsIDOMEvent)aEvent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * doDrag transfers the relevant data (as appropriate)
   * to a transferable so it can later be dropped.
   */
  /* void doDrag (in nsIDOMEvent aEvent); */
  void DoDrag(nsIDOMEventD aEvent){
    nsresult __result = inner.DoDrag(aEvent ? cast(nsIDOMEvent)aEvent : null);
    CheckException(__result);
  }

  /** 
   * insertFromDrop looks for a dragsession and inserts the
   * relevant data in response to a drop.
   */
  /* void insertFromDrop (in nsIDOMEvent aEvent); */
  void InsertFromDrop(nsIDOMEventD aEvent){
    nsresult __result = inner.InsertFromDrop(aEvent ? cast(nsIDOMEvent)aEvent : null);
    CheckException(__result);
  }

  /**
   * Tests if a node is a BLOCK element according the the HTML 4.0 DTD.
   *   This does NOT consider CSS effect on display type
   *
   * @param aNode      the node to test
   */
  /* boolean nodeIsBlock (in nsIDOMNode node); */
  PRBool NodeIsBlock(nsIDOMNodeD node){
    PRBool _retval;
    nsresult __result = inner.NodeIsBlock(node ? cast(nsIDOMNode)node : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Insert some HTML source at the current location
   *
   * @param aInputString   the string to be inserted
   */
  /* void insertHTML (in AString aInputString); */
  void InsertHTML(wchar[] aInputString){
    scope auto _aInputString = new AString(aInputString);
    nsresult __result = inner.InsertHTML(cast(nsAString*)_aInputString);
    CheckException(__result);
  }

  /** 
    * Paste the text in the OS clipboard at the cursor position, replacing
    * the selected text (if any), but strip out any HTML styles and formatting
    */
  /* void pasteNoFormatting (in long aSelectionType); */
  void PasteNoFormatting(PRInt32 aSelectionType){
    nsresult __result = inner.PasteNoFormatting(aSelectionType);
    CheckException(__result);
  }

  /** 
   *  Rebuild the entire document from source HTML
   *  Needed to be able to edit HEAD and other outside-of-BODY content
   *
   *  @param aSourceString   HTML source string of the entire new document
   */
  /* void rebuildDocumentFromSource (in AString aSourceString); */
  void RebuildDocumentFromSource(wchar[] aSourceString){
    scope auto _aSourceString = new AString(aSourceString);
    nsresult __result = inner.RebuildDocumentFromSource(cast(nsAString*)_aSourceString);
    CheckException(__result);
  }

  /**
   * Insert some HTML source, interpreting
   * the string argument according to the given context.
   *
   * @param aInputString   the string to be inserted
   * @param aContextStr    Context of insertion
   * @param aInfoStr       Related info to aInputString 
   * @param aFlavor        Transferable flavor, can be ""
   * @param aSourceDoc          document where input was dragged from (may be null)
   * @param aDestinationNode    location for insertion (such as when dropped)
   * @param aDestinationOffset  used with aDestNode to determine insert location
   * @param aDeleteSelection    used with aDestNode during drag&drop 
   * @param aCollapseSelection  used with aDestNode during drag&drop
   */
  /* void insertHTMLWithContext (in AString aInputString, in AString aContextStr, in AString aInfoStr, in AString aFlavor, in nsIDOMDocument aSourceDoc, in nsIDOMNode aDestinationNode, in long aDestinationOffset, in boolean aDeleteSelection); */
  void InsertHTMLWithContext(wchar[] aInputString, wchar[] aContextStr, wchar[] aInfoStr, wchar[] aFlavor, nsIDOMDocumentD aSourceDoc, nsIDOMNodeD aDestinationNode, PRInt32 aDestinationOffset, PRBool aDeleteSelection){
    scope auto _aInputString = new AString(aInputString);
    scope auto _aContextStr = new AString(aContextStr);
    scope auto _aInfoStr = new AString(aInfoStr);
    scope auto _aFlavor = new AString(aFlavor);
    nsresult __result = inner.InsertHTMLWithContext(cast(nsAString*)_aInputString, cast(nsAString*)_aContextStr, cast(nsAString*)_aInfoStr, cast(nsAString*)_aFlavor, aSourceDoc ? cast(nsIDOMDocument)aSourceDoc : null, aDestinationNode ? cast(nsIDOMNode)aDestinationNode : null, aDestinationOffset, aDeleteSelection);
    CheckException(__result);
  }

  /** 
    * Insert an element, which may have child nodes, at the selection
    * Used primarily to insert a new element for various insert element dialogs,
    *   but it enforces the HTML 4.0 DTD "CanContain" rules, so it should
    *   be useful for other elements.
    *
    * @param aElement           The element to insert
    * @param aDeleteSelection   Delete the selection before inserting
    *     If aDeleteSelection is PR_FALSE, then the element is inserted 
    *     after the end of the selection for all element except
    *     Named Anchors, which insert before the selection
    */
  /* void insertElementAtSelection (in nsIDOMElement aElement, in boolean aDeleteSelection); */
  void InsertElementAtSelection(nsIDOMElementD aElement, PRBool aDeleteSelection){
    nsresult __result = inner.InsertElementAtSelection(aElement ? cast(nsIDOMElement)aElement : null, aDeleteSelection);
    CheckException(__result);
  }

  /** 
   *   Set the documents title.
   */
  /* void setDocumentTitle (in AString aTitle); */
  void SetDocumentTitle(wchar[] aTitle){
    scope auto _aTitle = new AString(aTitle);
    nsresult __result = inner.SetDocumentTitle(cast(nsAString*)_aTitle);
    CheckException(__result);
  }

  /** 
   *   Set the BaseURL for the document to the current URL
   *     but only if the page doesn't have a <base> tag
   *   This should be done after the document URL has changed,
   *     such as after saving a file
   *   This is used as base for relativizing link and image urls
   */
  /* void updateBaseURL (); */
  void UpdateBaseURL(){
    nsresult __result = inner.UpdateBaseURL();
    CheckException(__result);
  }

  /** 
    * Set the selection at the suppled element
    *
    * @param aElement   An element in the document
    */
  /* void selectElement (in nsIDOMElement aElement); */
  void SelectElement(nsIDOMElementD aElement){
    nsresult __result = inner.SelectElement(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

  /** 
    * Create a collapsed selection just after aElement
    * 
    * XXX could we parameterize SelectElement(before/select/after>?
    *
    * The selection is set to parent-of-aElement with an
    *   offset 1 greater than aElement's offset
    *   but it enforces the HTML 4.0 DTD "CanContain" rules, so it should
    *   be useful for other elements.
    *
    * @param aElement  An element in the document
    */
  /* void setCaretAfterElement (in nsIDOMElement aElement); */
  void SetCaretAfterElement(nsIDOMElementD aElement){
    nsresult __result = inner.SetCaretAfterElement(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

  /**
   * SetParagraphFormat       Insert a block paragraph tag around selection
   * @param aParagraphFormat  "p", "h1" to "h6", "address", "pre", or "blockquote"
   */
  /* void setParagraphFormat (in AString aParagraphFormat); */
  void SetParagraphFormat(wchar[] aParagraphFormat){
    scope auto _aParagraphFormat = new AString(aParagraphFormat);
    nsresult __result = inner.SetParagraphFormat(cast(nsAString*)_aParagraphFormat);
    CheckException(__result);
  }

  /**
   * getParagraphState returns what block tag paragraph format is in
   * the selection.
   * @param aMixed     True if there is more than one format
   * @return           Name of block tag. "" is returned for none.
   */
  /* AString getParagraphState (out boolean aMixed); */
  wchar[] GetParagraphState(out PRBool aMixed){
    scope auto _retval = new AString;
    nsresult __result = inner.GetParagraphState(&aMixed, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * getFontFaceState returns what font face is in the selection.
   * @param aMixed    True if there is more than one font face
   * @return          Name of face.  Note: "tt" is returned for
   *                  tt tag.  "" is returned for none.
   */
  /* AString getFontFaceState (out boolean aMixed); */
  wchar[] GetFontFaceState(out PRBool aMixed){
    scope auto _retval = new AString;
    nsresult __result = inner.GetFontFaceState(&aMixed, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * getFontColorState returns what font face is in the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getFontColorState (out boolean aMixed); */
  wchar[] GetFontColorState(out PRBool aMixed){
    scope auto _retval = new AString;
    nsresult __result = inner.GetFontColorState(&aMixed, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * getFontColorState returns what font face is in the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getBackgroundColorState (out boolean aMixed); */
  wchar[] GetBackgroundColorState(out PRBool aMixed){
    scope auto _retval = new AString;
    nsresult __result = inner.GetBackgroundColorState(&aMixed, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * getHighlightColorState returns what the highlight color of the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getHighlightColorState (out boolean aMixed); */
  wchar[] GetHighlightColorState(out PRBool aMixed){
    scope auto _retval = new AString;
    nsresult __result = inner.GetHighlightColorState(&aMixed, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * getListState returns what list type is in the selection.
   * @param aMixed    True if there is more than one type of list, or
   *                  if there is some list and non-list
   * @param aOL       The company that employs me.  No, really, it's 
   *                  true if an "ol" list is selected.
   * @param aUL       true if an "ul" list is selected.
   * @param aDL       true if a "dl" list is selected.
   */
  /* void getListState (out boolean aMixed, out boolean aOL, out boolean aUL, out boolean aDL); */
  void GetListState(out PRBool aMixed, out PRBool aOL, out PRBool aUL, out PRBool aDL){
    nsresult __result = inner.GetListState(&aMixed, &aOL, &aUL, &aDL);
    CheckException(__result);
  }

  /** 
   * getListItemState returns what list item type is in the selection.
   * @param aMixed    True if there is more than one type of list item, or
   *                  if there is some list and non-list
   * @param aLI       true if "li" list items are selected.
   * @param aDT       true if "dt" list items are selected.
   * @param aDD       true if "dd" list items are selected.
   */
  /* void getListItemState (out boolean aMixed, out boolean aLI, out boolean aDT, out boolean aDD); */
  void GetListItemState(out PRBool aMixed, out PRBool aLI, out PRBool aDT, out PRBool aDD){
    nsresult __result = inner.GetListItemState(&aMixed, &aLI, &aDT, &aDD);
    CheckException(__result);
  }

  /** 
   * getAlignment     returns what alignment is in the selection.
   * @param aMixed    True if there is more than one type of list item, or
   *                  if there is some list and non-list
   * @param aAlign    enum value for first encountered alignment
   *                  (left/center/right)
   */
  /* void getAlignment (out boolean aMixed, out short aAlign); */
  void GetAlignment(out PRBool aMixed, out PRInt16 aAlign){
    nsresult __result = inner.GetAlignment(&aMixed, &aAlign);
    CheckException(__result);
  }

  /**
   * Document me!
   * 
   */
  /* void getIndentState (out boolean aCanIndent, out boolean aCanOutdent); */
  void GetIndentState(out PRBool aCanIndent, out PRBool aCanOutdent){
    nsresult __result = inner.GetIndentState(&aCanIndent, &aCanOutdent);
    CheckException(__result);
  }

  /**
   * Document me!
   * 
   */
  /* void makeOrChangeList (in AString aListType, in boolean entireList, in AString aBulletType); */
  void MakeOrChangeList(wchar[] aListType, PRBool entireList, wchar[] aBulletType){
    scope auto _aListType = new AString(aListType);
    scope auto _aBulletType = new AString(aBulletType);
    nsresult __result = inner.MakeOrChangeList(cast(nsAString*)_aListType, entireList, cast(nsAString*)_aBulletType);
    CheckException(__result);
  }

  /**
   * Document me!
   * 
   */
  /* void removeList (in AString aListType); */
  void RemoveList(wchar[] aListType){
    scope auto _aListType = new AString(aListType);
    nsresult __result = inner.RemoveList(cast(nsAString*)_aListType);
    CheckException(__result);
  }

  /**
   * Document me!
   * 
   */
  /* void indent (in AString aIndent); */
  void Indent(wchar[] aIndent){
    scope auto _aIndent = new AString(aIndent);
    nsresult __result = inner.Indent(cast(nsAString*)_aIndent);
    CheckException(__result);
  }

  /**
   * Document me!
   * 
   */
  /* void align (in AString aAlign); */
  void Align(wchar[] aAlign){
    scope auto _aAlign = new AString(aAlign);
    nsresult __result = inner.Align(cast(nsAString*)_aAlign);
    CheckException(__result);
  }

  /** 
   * Return the input node or a parent matching the given aTagName,
   *   starting the search at the supplied node.
   * An example of use is for testing if a node is in a table cell
   *   given a selection anchor node.
   *
   * @param aTagName  The HTML tagname
   *  Special input values:
   *    Use "href" to get a link node 
   *      (an "A" tag with the "href" attribute set)
   *    Use "anchor" or "namedanchor" to get a named anchor node
   *      (an "A" tag with the "name" attribute set)
   *    Use "list" to get an OL, UL, or DL list node
   *    Use "td" to get either a TD or TH cell node
   *
   * @param aNode    The node in the document to start the search.
   *     If it is null, the anchor node of the current selection is used.
   * @return         NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
   *                 (passes NS_SUCCEEDED macro)
   */
  /* nsIDOMElement getElementOrParentByTagName (in AString aTagName, in nsIDOMNode aNode); */
  nsIDOMElementD  GetElementOrParentByTagName(wchar[] aTagName, nsIDOMNodeD aNode){
    scope auto _aTagName = new AString(aTagName);
    nsIDOMElement _retval;
    nsresult __result = inner.GetElementOrParentByTagName(cast(nsAString*)_aTagName, aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** 
   * Return an element only if it is the only node selected,
   *    such as an image, horizontal rule, etc.
   * The exception is a link, which is more like a text attribute:
   *    The Anchor tag is returned if the selection is within the textnode(s)
   *    that are children of the "A" node.
   *    This could be a collapsed selection, i.e., a caret
   *    within the link text.
   *
   * @param aTagName  The HTML tagname or and empty string 
   *       to get any element (but only if it is the only element selected)
   *    Special input values for Links and Named anchors:
   *    Use "href" to get a link node
   *      (an "A" tag with the "href" attribute set)
   *    Use "anchor" or "namedanchor" to get a named anchor node
   *      (an "A" tag with the "name" attribute set)
   * @return          NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
   *                  (passes NS_SUCCEEDED macro)
   */
  /* nsIDOMElement getSelectedElement (in AString aTagName); */
  nsIDOMElementD  GetSelectedElement(wchar[] aTagName){
    scope auto _aTagName = new AString(aTagName);
    nsIDOMElement _retval;
    nsresult __result = inner.GetSelectedElement(cast(nsAString*)_aTagName, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** 
   * Output the contents of the <HEAD> section as text/HTML format
   */
  /* AString getHeadContentsAsHTML (); */
  wchar[] GetHeadContentsAsHTML(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetHeadContentsAsHTML(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * Replace all children of <HEAD> with string of HTML source
   */
  /* void replaceHeadContentsWithHTML (in AString aSourceToInsert); */
  void ReplaceHeadContentsWithHTML(wchar[] aSourceToInsert){
    scope auto _aSourceToInsert = new AString(aSourceToInsert);
    nsresult __result = inner.ReplaceHeadContentsWithHTML(cast(nsAString*)_aSourceToInsert);
    CheckException(__result);
  }

  /** 
   * Return a new element with default attribute values
   * 
   * This does not rely on the selection, and is not sensitive to context.
   * 
   * Used primarily to supply new element for various insert element dialogs
   *  (Image, Link, NamedAnchor, Table, and HorizontalRule 
   *   are the only returned elements as of 7/25/99)
   *
   * @param aTagName  The HTML tagname
   *    Special input values for Links and Named anchors:
   *    Use "href" to get a link node
   *      (an "A" tag with the "href" attribute set)
   *    Use "anchor" or "namedanchor" to get a named anchor node
   *      (an "A" tag with the "name" attribute set)
   * @return          The new element created.
   */
  /* nsIDOMElement createElementWithDefaults (in AString aTagName); */
  nsIDOMElementD  CreateElementWithDefaults(wchar[] aTagName){
    scope auto _aTagName = new AString(aTagName);
    nsIDOMElement _retval;
    nsresult __result = inner.CreateElementWithDefaults(cast(nsAString*)_aTagName, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** 
   * Insert an link element as the parent of the current selection
   *
   * @param aElement   An "A" element with a non-empty "href" attribute
   */
  /* void insertLinkAroundSelection (in nsIDOMElement aAnchorElement); */
  void InsertLinkAroundSelection(nsIDOMElementD aAnchorElement){
    nsresult __result = inner.InsertLinkAroundSelection(aAnchorElement ? cast(nsIDOMElement)aAnchorElement : null);
    CheckException(__result);
  }

  /** 
   * Set the value of the "bgcolor" attribute on the document's <body> element
   *
   * @param aColor  The HTML color string, such as "#ffccff" or "yellow"
   */
  /* void setBackgroundColor (in AString aColor); */
  void SetBackgroundColor(wchar[] aColor){
    scope auto _aColor = new AString(aColor);
    nsresult __result = inner.SetBackgroundColor(cast(nsAString*)_aColor);
    CheckException(__result);
  }

  /** 
   * Set an attribute on the document's <body> element
   *    such as text, link, background colors
   *
   * 8/31/00 THIS ISN'T BEING USED? SHOULD WE DROP IT?
   *
   * @param aAttr   The attribute to be set
   * @param aValue  The value of the attribute
   */
  /* void setBodyAttribute (in AString aAttr, in AString aValue); */
  void SetBodyAttribute(wchar[] aAttr, wchar[] aValue){
    scope auto _aAttr = new AString(aAttr);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetBodyAttribute(cast(nsAString*)_aAttr, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /** 
   * XXX Used to suppress spurious drag/drop events to workaround bug 50703
   * Don't use this method! It will go away after first release!
   */
  /* void ignoreSpuriousDragEvent (in boolean aIgnoreSpuriousDragEvent); */
  void IgnoreSpuriousDragEvent(PRBool aIgnoreSpuriousDragEvent){
    nsresult __result = inner.IgnoreSpuriousDragEvent(aIgnoreSpuriousDragEvent);
    CheckException(__result);
  }

  /**
   * Find all the nodes in the document which contain references
   * to outside URIs (e.g. a href, img src, script src, etc.)
   * The objects in the array will be type nsIURIRefObject.
   *
   * @return aNodeList    the linked nodes found
   */
  /* nsISupportsArray getLinkedObjects (); */
  nsISupportsArrayD  GetLinkedObjects(){
    nsISupportsArray _retval;
    nsresult __result = inner.GetLinkedObjects(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /** 
   * A boolean which is true is the HTMLEditor has been instantiated
   * with CSS knowledge and if the CSS pref is currently checked
   *
   * @return    true if CSS handled and enabled
   */
  /* attribute boolean isCSSEnabled; */
  PRBool IsCSSEnabled(){
    PRBool value;
    nsresult __result = inner.GetIsCSSEnabled(&value);
    CheckException(__result);
    return value;
  }
  void IsCSSEnabled(PRBool aIsCSSEnabled){
    nsresult __result = inner.SetIsCSSEnabled(aIsCSSEnabled);
    CheckException(__result);
  }

  /**
   * Add listener for insertion override
   * @param inFilter  function which callers want called during insertion
   */
  /* void addInsertionListener (in nsIContentFilter inFilter); */
  void AddInsertionListener(nsIContentFilterD inFilter){
    nsresult __result = inner.AddInsertionListener(inFilter ? cast(nsIContentFilter)inFilter : null);
    CheckException(__result);
  }

  /**
   * Remove listener for insertion override
   * @param inFilter  function which callers do not want called during insertion
   */
  /* void removeInsertionListener (in nsIContentFilter inFilter); */
  void RemoveInsertionListener(nsIContentFilterD inFilter){
    nsresult __result = inner.RemoveInsertionListener(inFilter ? cast(nsIContentFilter)inFilter : null);
    CheckException(__result);
  }

  /**
   * Returns an anonymous nsDOMElement of type aTag,
   * child of aParentNode. If aIsCreatedHidden is true, the class
   * "hidden" is added to the created element. If aAnonClass is not
   * the empty string, it becomes the value of the attribute "_moz_anonclass"
   * @return a DOM Element
   * @param aTag             [IN] a string representing the desired type of
   *                              the element to create
   * @param aParentNode      [IN] the parent node of the created anonymous
   *                              element
   * @param aAnonClass       [IN] contents of the _moz_anonclass attribute
   * @param aIsCreatedHidden [IN] a boolean specifying if the class "hidden"
   *                              is to be added to the created anonymous
   *                              element
   */
  /* nsIDOMElement createAnonymousElement (in AString aTag, in nsIDOMNode aParentNode, in AString aAnonClass, in boolean aIsCreatedHidden); */
  nsIDOMElementD  CreateAnonymousElement(wchar[] aTag, nsIDOMNodeD aParentNode, wchar[] aAnonClass, PRBool aIsCreatedHidden){
    scope auto _aTag = new AString(aTag);
    scope auto _aAnonClass = new AString(aAnonClass);
    nsIDOMElement _retval;
    nsresult __result = inner.CreateAnonymousElement(cast(nsAString*)_aTag, aParentNode ? cast(nsIDOMNode)aParentNode : null, cast(nsAString*)_aAnonClass, aIsCreatedHidden, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /**
   * returns the deepest container of the selection
   * @return a DOM Element
   */
  /* nsIDOMElement getSelectionContainer (); */
  nsIDOMElementD  GetSelectionContainer(){
    nsIDOMElement _retval;
    nsresult __result = inner.GetSelectionContainer(&_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /**
   * Checks if the anonymous nodes created by the HTML editor have to be
   * refreshed or hidden depending on a possible new state of the selection
   * @param aSelection [IN] a selection
   */
  /* void checkSelectionStateForAnonymousButtons (in nsISelection aSelection); */
  void CheckSelectionStateForAnonymousButtons(nsISelectionD aSelection){
    nsresult __result = inner.CheckSelectionStateForAnonymousButtons(aSelection ? cast(nsISelection)aSelection : null);
    CheckException(__result);
  }

  /* boolean isAnonymousElement (in nsIDOMElement aElement); */
  PRBool IsAnonymousElement(nsIDOMElementD aElement){
    PRBool _retval;
    nsresult __result = inner.IsAnonymousElement(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * A boolean indicating if a return key pressed in a paragraph creates
   * another paragraph or just inserts a <br> at the caret
   *
   * @return    true if CR in a paragraph creates a new paragraph
   */
  /* attribute boolean returnInParagraphCreatesNewParagraph; */
  PRBool ReturnInParagraphCreatesNewParagraph(){
    PRBool value;
    nsresult __result = inner.GetReturnInParagraphCreatesNewParagraph(&value);
    CheckException(__result);
    return value;
  }
  void ReturnInParagraphCreatesNewParagraph(PRBool aReturnInParagraphCreatesNewParagraph){
    nsresult __result = inner.SetReturnInParagraphCreatesNewParagraph(aReturnInParagraphCreatesNewParagraph);
    CheckException(__result);
  }

private:
  nsIHTMLEditor inner;

}

