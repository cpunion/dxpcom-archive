/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessNode.idl
 */

module mozilla.dxpcom.nsIAccessNodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessNode;


public import mozilla.dxpcom.nsIAccessNodeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIAccessibleDocument;

public import mozilla.dxpcom.nsIAccessibleDocumentD;


/* starting wrapper class:    nsIAccessNode */
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
class nsIAccessNodeD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSNODE_IID;


  alias nsIAccessNode InnerType;

  this(nsIAccessNode intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessNode opCast() {
    return inner;
  }

  void opAssign(nsIAccessNode value) {
    inner = value;
  }

  /**
   * The DOM node this nsIAccessNode is associated with.
   */
  /* readonly attribute nsIDOMNode DOMNode; */
  nsIDOMNodeD  DOMNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetDOMNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /**
   * The number of DOM children for the DOM node, which
   * matches the number of nsIAccessNode children for this
   * nsIAccessNode.
   */
  /* readonly attribute long numChildren; */
  PRInt32 NumChildren(){
    PRInt32 value;
    nsresult __result = inner.GetNumChildren(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the nth child of this node
   * @param childNum Zero-based child index
   * @return The nth nsIAccessNode child
   */
  /* nsIAccessNode getChildNodeAt (in long childNum); */
  nsIAccessNodeD  GetChildNodeAt(PRInt32 childNum){
    nsIAccessNode _retval;
    nsresult __result = inner.GetChildNodeAt(childNum, &_retval);
    CheckException(__result);
    return new nsIAccessNodeD(_retval);
  }

  /**
   * The parent nsIAccessNode
   */
  /* readonly attribute nsIAccessNode parentNode; */
  nsIAccessNodeD  ParentNode(){
    nsIAccessNode value;
    nsresult __result = inner.GetParentNode(&value);
    CheckException(__result);
    return new nsIAccessNodeD(value);
  }

  /**
   * The first nsIAccessNode child
   */
  /* readonly attribute nsIAccessNode firstChildNode; */
  nsIAccessNodeD  FirstChildNode(){
    nsIAccessNode value;
    nsresult __result = inner.GetFirstChildNode(&value);
    CheckException(__result);
    return new nsIAccessNodeD(value);
  }

  /**
   * The last nsIAccessNode child
   */
  /* readonly attribute nsIAccessNode lastChildNode; */
  nsIAccessNodeD  LastChildNode(){
    nsIAccessNode value;
    nsresult __result = inner.GetLastChildNode(&value);
    CheckException(__result);
    return new nsIAccessNodeD(value);
  }

  /**
   * The previous nsIAccessNode sibling
   */
  /* readonly attribute nsIAccessNode previousSiblingNode; */
  nsIAccessNodeD  PreviousSiblingNode(){
    nsIAccessNode value;
    nsresult __result = inner.GetPreviousSiblingNode(&value);
    CheckException(__result);
    return new nsIAccessNodeD(value);
  }

  /**
   * The next nsIAccessNode sibling
   */
  /* readonly attribute nsIAccessNode nextSiblingNode; */
  nsIAccessNodeD  NextSiblingNode(){
    nsIAccessNode value;
    nsresult __result = inner.GetNextSiblingNode(&value);
    CheckException(__result);
    return new nsIAccessNodeD(value);
  }

  /**
   * The nsIAccessibleDocument that this nsIAccessNode
   * resides in.
   */
  /* readonly attribute nsIAccessibleDocument accessibleDocument; */
  nsIAccessibleDocumentD  AccessibleDocument(){
    nsIAccessibleDocument value;
    nsresult __result = inner.GetAccessibleDocument(&value);
    CheckException(__result);
    return new nsIAccessibleDocumentD(value);
  }

  /**
   * The innerHTML for the DOM node
   * This is a text string of all the markup inside the DOM
   * node, not including the start and end tag for the node.
   */
  /* readonly attribute DOMString innerHTML; */
  wchar[] InnerHTML(){
    scope auto value = new AString();
    nsresult __result = inner.GetInnerHTML(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The OS window handle for the window this node
   * is being displayed in.
   */
  /* [noscript] readonly attribute voidPtr ownerWindow; */
  void * OwnerWindow(){
    void * value;
    nsresult __result = inner.GetOwnerWindow(&value);
    CheckException(__result);
    return value;
  }

  /**
   * A unique ID calculated for this DOM node, for the 
   * purposes of caching and referencing this object.
   */
  /* [noscript] readonly attribute voidPtr uniqueID; */
  void * UniqueID(){
    void * value;
    nsresult __result = inner.GetUniqueID(&value);
    CheckException(__result);
    return value;
  }

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
  wchar[] GetComputedStyleValue(wchar[] pseudoElt, wchar[] propertyName){
    scope auto _pseudoElt = new AString(pseudoElt);
    scope auto _propertyName = new AString(propertyName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetComputedStyleValue(cast(nsAString*)_pseudoElt, cast(nsAString*)_propertyName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIAccessNode inner;

}

