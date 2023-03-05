/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleRetrieval.idl
 */

module mozilla.dxpcom.nsIAccessibleRetrievalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleRetrieval;


public import mozilla.dxpcom.nsIAccessibleRetrievalD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;

public import mozilla.xpcom.nsIWeakReference;

public import mozilla.dxpcom.nsIWeakReferenceD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIAccessNode;

public import mozilla.dxpcom.nsIAccessNodeD;


/* starting wrapper class:    nsIAccessibleRetrieval */
/**
 * An interface for in-process accessibility clients
 * wishing to get an nsIAccessible or nsIAccessNode for
 * a given DOM node.
 * More documentation at:
 *   http://www.mozilla.org/projects/ui/accessibility
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleRetrievalD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLERETRIEVAL_IID;


  alias nsIAccessibleRetrieval InnerType;

  this(nsIAccessibleRetrieval intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleRetrieval opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleRetrieval value) {
    inner = value;
  }

  /**
   * Return an nsIAccessible for a DOM node in pres shell 0.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode The DOM node to get an accessible for.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleFor (in nsIDOMNode aNode); */
  nsIAccessibleD  GetAccessibleFor(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleFor(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Return an nsIAccessible for a DOM node in pres shell for this DOM window.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode   The DOM node to get an accessible for.
   * @param aDOMWin The DOM window containing the node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInWindow (in nsIDOMNode aNode, in nsIDOMWindow aDOMWin); */
  nsIAccessibleD  GetAccessibleInWindow(nsIDOMNodeD aNode, nsIDOMWindowD aDOMWin){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleInWindow(aNode ? cast(nsIDOMNode)aNode : null, aDOMWin ? cast(nsIDOMWindow)aDOMWin : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Return an nsIAccessible for a DOM node in the given weak shell.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode      The DOM node to get an accessible for.
   * @param aPresShell The presentation shell which contains layout info for the DOM node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInWeakShell (in nsIDOMNode aNode, in nsIWeakReference aPresShell); */
  nsIAccessibleD  GetAccessibleInWeakShell(nsIDOMNodeD aNode, nsIWeakReferenceD aPresShell){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleInWeakShell(aNode ? cast(nsIDOMNode)aNode : null, aPresShell ? cast(nsIWeakReference)aPresShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Return an nsIAccessible for a DOM node in the given pres shell.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode      The DOM node to get an accessible for.
   * @param aPresShell The presentation shell which contains layout info for the DOM node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInShell (in nsIDOMNode aNode, in nsIPresShell aPresShell); */
  nsIAccessibleD  GetAccessibleInShell(nsIDOMNodeD aNode, nsIPresShellD aPresShell){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleInShell(aNode ? cast(nsIDOMNode)aNode : null, aPresShell ? cast(nsIPresShell)aPresShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
    * Return an nsIAccessNode for an already created DOM node in the given weak shell.
    * Does not create a new one -- only returns cached access nodes.
    * @param aNode      The DOM node to get an access node for.
    * @param aPresShell The presentation shell which contains layout info for the DOM node.
    * @return The nsIAccessNode for the given DOM node or null if
    *         an access node does not already exist for this DOM node.
    */
  /* nsIAccessNode getCachedAccessNode (in nsIDOMNode aNode, in nsIWeakReference aShell); */
  nsIAccessNodeD  GetCachedAccessNode(nsIDOMNodeD aNode, nsIWeakReferenceD aShell){
    nsIAccessNode _retval;
    nsresult __result = inner.GetCachedAccessNode(aNode ? cast(nsIDOMNode)aNode : null, aShell ? cast(nsIWeakReference)aShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessNodeD(_retval);
  }

  /**
    * Return an nsIAccessible for an already created DOM node in the given weak shell.
    * Does not create a new one -- only returns cached accessibles.
    * @param aNode      The DOM node to get an accessible for.
    * @param aPresShell The presentation shell which contains layout info for the DOM node.
    * @return The nsIAccessible for the given DOM node or null if
    *         an accessible does not already exist for this DOM node.
    */
  /* nsIAccessible getCachedAccessible (in nsIDOMNode aNode, in nsIWeakReference aShell); */
  nsIAccessibleD  GetCachedAccessible(nsIDOMNodeD aNode, nsIWeakReferenceD aShell){
    nsIAccessible _retval;
    nsresult __result = inner.GetCachedAccessible(aNode ? cast(nsIDOMNode)aNode : null, aShell ? cast(nsIWeakReference)aShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

private:
  nsIAccessibleRetrieval inner;

}

