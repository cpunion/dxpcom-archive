/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLEditor.idl
 */

module mozilla.xpcom.nsIHTMLEditor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

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


public import mozilla.xpcom.nsIAtom; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsISelection; /* forward declaration */

public import mozilla.xpcom.nsIContentFilter; /* forward declaration */


/* starting interface:    nsIHTMLEditor */
const char[] NS_IHTMLEDITOR_IID_STR = "afc36593-5787-4420-93d9-b2c0ccbf0cad";

const nsIID NS_IHTMLEDITOR_IID= 
  {0xafc36593, 0x5787, 0x4420, 
    [ 0x93, 0xd9, 0xb2, 0xc0, 0xcc, 0xbf, 0x0c, 0xad ]};

extern(Windows)
interface nsIHTMLEditor : nsISupports {
  static const char[] IID_STR = NS_IHTMLEDITOR_IID_STR;
  static const nsIID IID = NS_IHTMLEDITOR_IID;

  enum { eLeft = 0 };

  enum { eCenter = 1 };

  enum { eRight = 2 };

  enum { eJustify = 3 };

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
  nsresult AddDefaultProperty(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue);

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
  nsresult RemoveDefaultProperty(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue);

  /**
   * RemoveAllDefaultProperties() unregisters all default style properties with the editor
   *
   */
  /* void removeAllDefaultProperties (); */
  nsresult RemoveAllDefaultProperties();

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
  nsresult SetCSSInlineProperty(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue);

  /* void setInlineProperty (in nsIAtom aProperty, in AString aAttribute, in AString aValue); */
  nsresult SetInlineProperty(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue);

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
  nsresult GetInlineProperty(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue, PRBool *aFirst, PRBool *aAny, PRBool *aAll);

  /* AString getInlinePropertyWithAttrValue (in nsIAtom aProperty, in AString aAttribute, in AString aValue, out boolean aFirst, out boolean aAny, out boolean aAll); */
  nsresult GetInlinePropertyWithAttrValue(nsIAtom aProperty, nsAString * aAttribute, nsAString * aValue, PRBool *aFirst, PRBool *aAny, PRBool *aAll, nsAString * _retval);

  /**
   * removeAllInlineProperties() deletes all the inline properties from all 
   * text in the current selection.
   */
  /* void removeAllInlineProperties (); */
  nsresult RemoveAllInlineProperties();

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
  nsresult RemoveInlineProperty(nsIAtom aProperty, nsAString * aAttribute);

  /**
   *  Increase font size for text in selection by 1 HTML unit
   *  All existing text is scanned for existing <FONT SIZE> attributes
   *  so they will be incremented instead of inserting new <FONT> tag
   */
  /* void increaseFontSize (); */
  nsresult IncreaseFontSize();

  /**
   *  Decrease font size for text in selection by 1 HTML unit
   *  All existing text is scanned for existing <FONT SIZE> attributes
   *  so they will be decreased instead of inserting new <FONT> tag
   */
  /* void decreaseFontSize (); */
  nsresult DecreaseFontSize();

  /** 
   * canDrag decides if a drag should be started
   * (for example, based on the current selection and mousepoint).
   */
  /* boolean canDrag (in nsIDOMEvent aEvent); */
  nsresult CanDrag(nsIDOMEvent aEvent, PRBool *_retval);

  /** 
   * doDrag transfers the relevant data (as appropriate)
   * to a transferable so it can later be dropped.
   */
  /* void doDrag (in nsIDOMEvent aEvent); */
  nsresult DoDrag(nsIDOMEvent aEvent);

  /** 
   * insertFromDrop looks for a dragsession and inserts the
   * relevant data in response to a drop.
   */
  /* void insertFromDrop (in nsIDOMEvent aEvent); */
  nsresult InsertFromDrop(nsIDOMEvent aEvent);

  /**
   * Tests if a node is a BLOCK element according the the HTML 4.0 DTD.
   *   This does NOT consider CSS effect on display type
   *
   * @param aNode      the node to test
   */
  /* boolean nodeIsBlock (in nsIDOMNode node); */
  nsresult NodeIsBlock(nsIDOMNode node, PRBool *_retval);

  /**
   * Insert some HTML source at the current location
   *
   * @param aInputString   the string to be inserted
   */
  /* void insertHTML (in AString aInputString); */
  nsresult InsertHTML(nsAString * aInputString);

  /** 
    * Paste the text in the OS clipboard at the cursor position, replacing
    * the selected text (if any), but strip out any HTML styles and formatting
    */
  /* void pasteNoFormatting (in long aSelectionType); */
  nsresult PasteNoFormatting(PRInt32 aSelectionType);

  /** 
   *  Rebuild the entire document from source HTML
   *  Needed to be able to edit HEAD and other outside-of-BODY content
   *
   *  @param aSourceString   HTML source string of the entire new document
   */
  /* void rebuildDocumentFromSource (in AString aSourceString); */
  nsresult RebuildDocumentFromSource(nsAString * aSourceString);

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
  nsresult InsertHTMLWithContext(nsAString * aInputString, nsAString * aContextStr, nsAString * aInfoStr, nsAString * aFlavor, nsIDOMDocument aSourceDoc, nsIDOMNode aDestinationNode, PRInt32 aDestinationOffset, PRBool aDeleteSelection);

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
  nsresult InsertElementAtSelection(nsIDOMElement aElement, PRBool aDeleteSelection);

  /** 
   *   Set the documents title.
   */
  /* void setDocumentTitle (in AString aTitle); */
  nsresult SetDocumentTitle(nsAString * aTitle);

  /** 
   *   Set the BaseURL for the document to the current URL
   *     but only if the page doesn't have a <base> tag
   *   This should be done after the document URL has changed,
   *     such as after saving a file
   *   This is used as base for relativizing link and image urls
   */
  /* void updateBaseURL (); */
  nsresult UpdateBaseURL();

  /** 
    * Set the selection at the suppled element
    *
    * @param aElement   An element in the document
    */
  /* void selectElement (in nsIDOMElement aElement); */
  nsresult SelectElement(nsIDOMElement aElement);

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
  nsresult SetCaretAfterElement(nsIDOMElement aElement);

  /**
   * SetParagraphFormat       Insert a block paragraph tag around selection
   * @param aParagraphFormat  "p", "h1" to "h6", "address", "pre", or "blockquote"
   */
  /* void setParagraphFormat (in AString aParagraphFormat); */
  nsresult SetParagraphFormat(nsAString * aParagraphFormat);

  /**
   * getParagraphState returns what block tag paragraph format is in
   * the selection.
   * @param aMixed     True if there is more than one format
   * @return           Name of block tag. "" is returned for none.
   */
  /* AString getParagraphState (out boolean aMixed); */
  nsresult GetParagraphState(PRBool *aMixed, nsAString * _retval);

  /** 
   * getFontFaceState returns what font face is in the selection.
   * @param aMixed    True if there is more than one font face
   * @return          Name of face.  Note: "tt" is returned for
   *                  tt tag.  "" is returned for none.
   */
  /* AString getFontFaceState (out boolean aMixed); */
  nsresult GetFontFaceState(PRBool *aMixed, nsAString * _retval);

  /** 
   * getFontColorState returns what font face is in the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getFontColorState (out boolean aMixed); */
  nsresult GetFontColorState(PRBool *aMixed, nsAString * _retval);

  /** 
   * getFontColorState returns what font face is in the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getBackgroundColorState (out boolean aMixed); */
  nsresult GetBackgroundColorState(PRBool *aMixed, nsAString * _retval);

  /** 
   * getHighlightColorState returns what the highlight color of the selection.
   * @param aMixed     True if there is more than one font color
   * @return           Color string. "" is returned for none.
   */
  /* AString getHighlightColorState (out boolean aMixed); */
  nsresult GetHighlightColorState(PRBool *aMixed, nsAString * _retval);

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
  nsresult GetListState(PRBool *aMixed, PRBool *aOL, PRBool *aUL, PRBool *aDL);

  /** 
   * getListItemState returns what list item type is in the selection.
   * @param aMixed    True if there is more than one type of list item, or
   *                  if there is some list and non-list
   * @param aLI       true if "li" list items are selected.
   * @param aDT       true if "dt" list items are selected.
   * @param aDD       true if "dd" list items are selected.
   */
  /* void getListItemState (out boolean aMixed, out boolean aLI, out boolean aDT, out boolean aDD); */
  nsresult GetListItemState(PRBool *aMixed, PRBool *aLI, PRBool *aDT, PRBool *aDD);

  /** 
   * getAlignment     returns what alignment is in the selection.
   * @param aMixed    True if there is more than one type of list item, or
   *                  if there is some list and non-list
   * @param aAlign    enum value for first encountered alignment
   *                  (left/center/right)
   */
  /* void getAlignment (out boolean aMixed, out short aAlign); */
  nsresult GetAlignment(PRBool *aMixed, PRInt16 *aAlign);

  /**
   * Document me!
   * 
   */
  /* void getIndentState (out boolean aCanIndent, out boolean aCanOutdent); */
  nsresult GetIndentState(PRBool *aCanIndent, PRBool *aCanOutdent);

  /**
   * Document me!
   * 
   */
  /* void makeOrChangeList (in AString aListType, in boolean entireList, in AString aBulletType); */
  nsresult MakeOrChangeList(nsAString * aListType, PRBool entireList, nsAString * aBulletType);

  /**
   * Document me!
   * 
   */
  /* void removeList (in AString aListType); */
  nsresult RemoveList(nsAString * aListType);

  /**
   * Document me!
   * 
   */
  /* void indent (in AString aIndent); */
  nsresult Indent(nsAString * aIndent);

  /**
   * Document me!
   * 
   */
  /* void align (in AString aAlign); */
  nsresult Align(nsAString * aAlign);

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
  nsresult GetElementOrParentByTagName(nsAString * aTagName, nsIDOMNode aNode, nsIDOMElement *_retval);

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
  nsresult GetSelectedElement(nsAString * aTagName, nsIDOMElement *_retval);

  /** 
   * Output the contents of the <HEAD> section as text/HTML format
   */
  /* AString getHeadContentsAsHTML (); */
  nsresult GetHeadContentsAsHTML(nsAString * _retval);

  /** 
   * Replace all children of <HEAD> with string of HTML source
   */
  /* void replaceHeadContentsWithHTML (in AString aSourceToInsert); */
  nsresult ReplaceHeadContentsWithHTML(nsAString * aSourceToInsert);

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
  nsresult CreateElementWithDefaults(nsAString * aTagName, nsIDOMElement *_retval);

  /** 
   * Insert an link element as the parent of the current selection
   *
   * @param aElement   An "A" element with a non-empty "href" attribute
   */
  /* void insertLinkAroundSelection (in nsIDOMElement aAnchorElement); */
  nsresult InsertLinkAroundSelection(nsIDOMElement aAnchorElement);

  /** 
   * Set the value of the "bgcolor" attribute on the document's <body> element
   *
   * @param aColor  The HTML color string, such as "#ffccff" or "yellow"
   */
  /* void setBackgroundColor (in AString aColor); */
  nsresult SetBackgroundColor(nsAString * aColor);

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
  nsresult SetBodyAttribute(nsAString * aAttr, nsAString * aValue);

  /** 
   * XXX Used to suppress spurious drag/drop events to workaround bug 50703
   * Don't use this method! It will go away after first release!
   */
  /* void ignoreSpuriousDragEvent (in boolean aIgnoreSpuriousDragEvent); */
  nsresult IgnoreSpuriousDragEvent(PRBool aIgnoreSpuriousDragEvent);

  /**
   * Find all the nodes in the document which contain references
   * to outside URIs (e.g. a href, img src, script src, etc.)
   * The objects in the array will be type nsIURIRefObject.
   *
   * @return aNodeList    the linked nodes found
   */
  /* nsISupportsArray getLinkedObjects (); */
  nsresult GetLinkedObjects(nsISupportsArray *_retval);

  /** 
   * A boolean which is true is the HTMLEditor has been instantiated
   * with CSS knowledge and if the CSS pref is currently checked
   *
   * @return    true if CSS handled and enabled
   */
  /* attribute boolean isCSSEnabled; */
  nsresult GetIsCSSEnabled(PRBool *aIsCSSEnabled);
  nsresult SetIsCSSEnabled(PRBool aIsCSSEnabled);

  /**
   * Add listener for insertion override
   * @param inFilter  function which callers want called during insertion
   */
  /* void addInsertionListener (in nsIContentFilter inFilter); */
  nsresult AddInsertionListener(nsIContentFilter inFilter);

  /**
   * Remove listener for insertion override
   * @param inFilter  function which callers do not want called during insertion
   */
  /* void removeInsertionListener (in nsIContentFilter inFilter); */
  nsresult RemoveInsertionListener(nsIContentFilter inFilter);

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
  nsresult CreateAnonymousElement(nsAString * aTag, nsIDOMNode aParentNode, nsAString * aAnonClass, PRBool aIsCreatedHidden, nsIDOMElement *_retval);

  /**
   * returns the deepest container of the selection
   * @return a DOM Element
   */
  /* nsIDOMElement getSelectionContainer (); */
  nsresult GetSelectionContainer(nsIDOMElement *_retval);

  /**
   * Checks if the anonymous nodes created by the HTML editor have to be
   * refreshed or hidden depending on a possible new state of the selection
   * @param aSelection [IN] a selection
   */
  /* void checkSelectionStateForAnonymousButtons (in nsISelection aSelection); */
  nsresult CheckSelectionStateForAnonymousButtons(nsISelection aSelection);

  /* boolean isAnonymousElement (in nsIDOMElement aElement); */
  nsresult IsAnonymousElement(nsIDOMElement aElement, PRBool *_retval);

  /**
   * A boolean indicating if a return key pressed in a paragraph creates
   * another paragraph or just inserts a <br> at the caret
   *
   * @return    true if CR in a paragraph creates a new paragraph
   */
  /* attribute boolean returnInParagraphCreatesNewParagraph; */
  nsresult GetReturnInParagraphCreatesNewParagraph(PRBool *aReturnInParagraphCreatesNewParagraph);
  nsresult SetReturnInParagraphCreatesNewParagraph(PRBool aReturnInParagraphCreatesNewParagraph);

}

