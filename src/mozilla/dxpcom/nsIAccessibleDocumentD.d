/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleDocument.idl
 */

module mozilla.dxpcom.nsIAccessibleDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleDocument;


public import mozilla.dxpcom.nsIAccessibleDocumentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;

public import mozilla.xpcom.nsIAccessNode;

public import mozilla.dxpcom.nsIAccessNodeD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIAccessibleDocument */
/**
 * An interface for in-process accessibility clients
 * that wish to retrieve information about a document.
 * When accessibility is turned on in Gecko,
 * there is an nsIAccessibleDocument for each document
 * whether it is XUL, HTML or whatever.
 * You can QueryInterface to nsIAccessibleDocument from
 * the nsIAccessible or nsIAccessNode for the root node
 * of a document. You can also get one from 
 * nsIAccessNode::GetAccessibleDocument() or 
 * nsIAccessibleEvent::GetAccessibleDocument()
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleDocumentD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEDOCUMENT_IID;


  alias nsIAccessibleDocument InnerType;

  this(nsIAccessibleDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleDocument opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleDocument value) {
    inner = value;
  }

  /**
   * The URL of the document
   */
  /* readonly attribute AString URL; */
  wchar[] URL(){
    scope auto value = new AString();
    nsresult __result = inner.GetURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The title of the document, as specified in the document.
   */
  /* readonly attribute AString title; */
  wchar[] Title(){
    scope auto value = new AString();
    nsresult __result = inner.GetTitle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The mime type of the document
   */
  /* readonly attribute AString mimeType; */
  wchar[] MimeType(){
    scope auto value = new AString();
    nsresult __result = inner.GetMimeType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The doc type of the document, as specified in the document.
   */
  /* readonly attribute AString docType; */
  wchar[] DocType(){
    scope auto value = new AString();
    nsresult __result = inner.GetDocType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * True if the document is live in an editor.
   * False if the document is being displayed but not edited. 
   * If a <div> is contentEditable, then it has its own document, 
   * with isEditable == true.
   */
  /* readonly attribute boolean isEditable; */
  PRBool IsEditable(){
    PRBool value;
    nsresult __result = inner.GetIsEditable(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The nsIDOMDocument interface associated with this document.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /**
   * The nsIDOMWindow that the document resides in.
   */
  /* readonly attribute nsIDOMWindow window; */
  nsIDOMWindowD  Window(){
    nsIDOMWindow value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /* readonly attribute nsIAccessible caretAccessible; */
  nsIAccessibleD  CaretAccessible(){
    nsIAccessible value;
    nsresult __result = inner.GetCaretAccessible(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * The namespace for each ID that is handed back.
   */
  /* AString getNameSpaceURIForID (in short nameSpaceID); */
  wchar[] GetNameSpaceURIForID(PRInt16 nameSpaceID){
    scope auto _retval = new AString;
    nsresult __result = inner.GetNameSpaceURIForID(nameSpaceID, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * The window handle for the OS window the document is being displayed in.
   * For example, in Windows you can static cast it to an HWND.
   */
  /* [noscript] readonly attribute voidPtr windowHandle; */
  void * WindowHandle(){
    void * value;
    nsresult __result = inner.GetWindowHandle(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Returns the access node cached by this document
   * @param aUniqueID The unique ID used to cache the node.
   *                  This matches up with the uniqueID attribute on
   *                  nsIAccessNode.
   * @return The nsIAccessNode cached for this particular unique ID.
   */
  /* [noscript] nsIAccessNode getCachedAccessNode (in voidPtr aUniqueID); */
  nsIAccessNodeD  GetCachedAccessNode(void * aUniqueID){
    nsIAccessNode _retval;
    nsresult __result = inner.GetCachedAccessNode(aUniqueID, &_retval);
    CheckException(__result);
    return new nsIAccessNodeD(_retval);
  }

  /**
   * Returns the first accessible parent of a DOM node.
   * Guaranteed not to return nsnull if the DOM node is in a document.
   * @param aDOMNode The DOM node we need an accessible for.
   * @return An first nsIAccessible found by crawling up the DOM node
   *         to the document root.
   */
  /* nsIAccessible getAccessibleInParentChain (in nsIDOMNode aDOMNode); */
  nsIAccessibleD  GetAccessibleInParentChain(nsIDOMNodeD aDOMNode){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleInParentChain(aDOMNode ? cast(nsIDOMNode)aDOMNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

private:
  nsIAccessibleDocument inner;

}

