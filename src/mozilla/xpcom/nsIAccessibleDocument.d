/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleDocument.idl
 */

module mozilla.xpcom.nsIAccessibleDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAccessible; /* forward declaration */

public import mozilla.xpcom.nsIAccessNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIAccessibleDocument */
const char[] NS_IACCESSIBLEDOCUMENT_IID_STR = "8781fc88-355f-4439-881f-6504a0a1ceb6";

const nsIID NS_IACCESSIBLEDOCUMENT_IID= 
  {0x8781fc88, 0x355f, 0x4439, 
    [ 0x88, 0x1f, 0x65, 0x04, 0xa0, 0xa1, 0xce, 0xb6 ]};

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
extern(Windows)
interface nsIAccessibleDocument : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEDOCUMENT_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEDOCUMENT_IID;

  /**
   * The URL of the document
   */
  /* readonly attribute AString URL; */
  nsresult GetURL(nsAString * aURL);

  /**
   * The title of the document, as specified in the document.
   */
  /* readonly attribute AString title; */
  nsresult GetTitle(nsAString * aTitle);

  /**
   * The mime type of the document
   */
  /* readonly attribute AString mimeType; */
  nsresult GetMimeType(nsAString * aMimeType);

  /**
   * The doc type of the document, as specified in the document.
   */
  /* readonly attribute AString docType; */
  nsresult GetDocType(nsAString * aDocType);

  /**
   * True if the document is live in an editor.
   * False if the document is being displayed but not edited. 
   * If a <div> is contentEditable, then it has its own document, 
   * with isEditable == true.
   */
  /* readonly attribute boolean isEditable; */
  nsresult GetIsEditable(PRBool *aIsEditable);

  /**
   * The nsIDOMDocument interface associated with this document.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsresult GetDocument(nsIDOMDocument  *aDocument);

  /**
   * The nsIDOMWindow that the document resides in.
   */
  /* readonly attribute nsIDOMWindow window; */
  nsresult GetWindow(nsIDOMWindow  *aWindow);

  /* readonly attribute nsIAccessible caretAccessible; */
  nsresult GetCaretAccessible(nsIAccessible  *aCaretAccessible);

  /**
   * The namespace for each ID that is handed back.
   */
  /* AString getNameSpaceURIForID (in short nameSpaceID); */
  nsresult GetNameSpaceURIForID(PRInt16 nameSpaceID, nsAString * _retval);

  /**
   * The window handle for the OS window the document is being displayed in.
   * For example, in Windows you can static cast it to an HWND.
   */
  /* [noscript] readonly attribute voidPtr windowHandle; */
  nsresult GetWindowHandle(void * *aWindowHandle);

  /**
   * Returns the access node cached by this document
   * @param aUniqueID The unique ID used to cache the node.
   *                  This matches up with the uniqueID attribute on
   *                  nsIAccessNode.
   * @return The nsIAccessNode cached for this particular unique ID.
   */
  /* [noscript] nsIAccessNode getCachedAccessNode (in voidPtr aUniqueID); */
  nsresult GetCachedAccessNode(void * aUniqueID, nsIAccessNode *_retval);

  /**
   * Returns the first accessible parent of a DOM node.
   * Guaranteed not to return nsnull if the DOM node is in a document.
   * @param aDOMNode The DOM node we need an accessible for.
   * @return An first nsIAccessible found by crawling up the DOM node
   *         to the document root.
   */
  /* nsIAccessible getAccessibleInParentChain (in nsIDOMNode aDOMNode); */
  nsresult GetAccessibleInParentChain(nsIDOMNode aDOMNode, nsIAccessible *_retval);

}

