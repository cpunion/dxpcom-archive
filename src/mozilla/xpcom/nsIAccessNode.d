/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessNode.idl
 */

module mozilla.xpcom.nsIAccessNode;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIAccessibleDocument; /* forward declaration */


/* starting interface:    nsIAccessNode */
const char[] NS_IACCESSNODE_IID_STR = "46820f9b-3088-4046-ab0f-56fdacdc7a82";

const nsIID NS_IACCESSNODE_IID= 
  {0x46820f9b, 0x3088, 0x4046, 
    [ 0xab, 0x0f, 0x56, 0xfd, 0xac, 0xdc, 0x7a, 0x82 ]};

/**
 * An interface used by in-process accessibility clients
 * to get style, window, markup and other information about
 * a DOM node. When accessibility is active in Gecko,
 * every DOM node can have one nsIAccessNode for each
 * pres shell the DOM node is rendered in.
 * The nsIAccessNode implementations are instantiated lazily.
 * The nsIAccessNode tree for a given dom window
 * has a one to one relationship to the DOM tree.
 * If the DOM node for this access node is "accessible",
 * then a QueryInterface to nsIAccessible will succeed.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIAccessNode : nsISupports {
  static const char[] IID_STR = NS_IACCESSNODE_IID_STR;
  static const nsIID IID = NS_IACCESSNODE_IID;

  /**
   * The DOM node this nsIAccessNode is associated with.
   */
  /* readonly attribute nsIDOMNode DOMNode; */
  nsresult GetDOMNode(nsIDOMNode  *aDOMNode);

  /**
   * The number of DOM children for the DOM node, which
   * matches the number of nsIAccessNode children for this
   * nsIAccessNode.
   */
  /* readonly attribute long numChildren; */
  nsresult GetNumChildren(PRInt32 *aNumChildren);

  /**
   * Get the nth child of this node
   * @param childNum Zero-based child index
   * @return The nth nsIAccessNode child
   */
  /* nsIAccessNode getChildNodeAt (in long childNum); */
  nsresult GetChildNodeAt(PRInt32 childNum, nsIAccessNode *_retval);

  /**
   * The parent nsIAccessNode
   */
  /* readonly attribute nsIAccessNode parentNode; */
  nsresult GetParentNode(nsIAccessNode  *aParentNode);

  /**
   * The first nsIAccessNode child
   */
  /* readonly attribute nsIAccessNode firstChildNode; */
  nsresult GetFirstChildNode(nsIAccessNode  *aFirstChildNode);

  /**
   * The last nsIAccessNode child
   */
  /* readonly attribute nsIAccessNode lastChildNode; */
  nsresult GetLastChildNode(nsIAccessNode  *aLastChildNode);

  /**
   * The previous nsIAccessNode sibling
   */
  /* readonly attribute nsIAccessNode previousSiblingNode; */
  nsresult GetPreviousSiblingNode(nsIAccessNode  *aPreviousSiblingNode);

  /**
   * The next nsIAccessNode sibling
   */
  /* readonly attribute nsIAccessNode nextSiblingNode; */
  nsresult GetNextSiblingNode(nsIAccessNode  *aNextSiblingNode);

  /**
   * The nsIAccessibleDocument that this nsIAccessNode
   * resides in.
   */
  /* readonly attribute nsIAccessibleDocument accessibleDocument; */
  nsresult GetAccessibleDocument(nsIAccessibleDocument  *aAccessibleDocument);

  /**
   * The innerHTML for the DOM node
   * This is a text string of all the markup inside the DOM
   * node, not including the start and end tag for the node.
   */
  /* readonly attribute DOMString innerHTML; */
  nsresult GetInnerHTML(nsAString * aInnerHTML);

  /**
   * The OS window handle for the window this node
   * is being displayed in.
   */
  /* [noscript] readonly attribute voidPtr ownerWindow; */
  nsresult GetOwnerWindow(void * *aOwnerWindow);

  /**
   * A unique ID calculated for this DOM node, for the 
   * purposes of caching and referencing this object.
   */
  /* [noscript] readonly attribute voidPtr uniqueID; */
  nsresult GetUniqueID(void * *aUniqueID);

  /**
   * Retrieve the computed style value for this DOM node, if it is a DOM element.
   * Note: the meanings of width, height and other size measurements depend
   * on the version of CSS being used. Therefore, for bounds information, 
   * it is better to use nsIAccessible::accGetBounds.
   * @param pseudoElt The pseudo element to retrieve style for, or NULL
   *                  for general computed style information for this node.
   * @param propertyName Retrieve the computed style value for this property name,
   *                     for example "border-bottom".
   */
  /* DOMString getComputedStyleValue (in DOMString pseudoElt, in DOMString propertyName); */
  nsresult GetComputedStyleValue(nsAString * pseudoElt, nsAString * propertyName, nsAString * _retval);

}

