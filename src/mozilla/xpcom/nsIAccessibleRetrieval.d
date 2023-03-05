/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleRetrieval.idl
 */

module mozilla.xpcom.nsIAccessibleRetrieval;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIAccessible; /* forward declaration */

public import mozilla.xpcom.nsIWeakReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIAccessNode; /* forward declaration */


/* starting interface:    nsIAccessibleRetrieval */
const char[] NS_IACCESSIBLERETRIEVAL_IID_STR = "663ca4a8-d219-4000-925d-d8f66406b626";

const nsIID NS_IACCESSIBLERETRIEVAL_IID= 
  {0x663ca4a8, 0xd219, 0x4000, 
    [ 0x92, 0x5d, 0xd8, 0xf6, 0x64, 0x06, 0xb6, 0x26 ]};

/**
 * An interface for in-process accessibility clients
 * wishing to get an nsIAccessible or nsIAccessNode for
 * a given DOM node.
 * More documentation at:
 *   http://www.mozilla.org/projects/ui/accessibility
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIAccessibleRetrieval : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLERETRIEVAL_IID_STR;
  static const nsIID IID = NS_IACCESSIBLERETRIEVAL_IID;

  /**
   * Return an nsIAccessible for a DOM node in pres shell 0.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode The DOM node to get an accessible for.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleFor (in nsIDOMNode aNode); */
  nsresult GetAccessibleFor(nsIDOMNode aNode, nsIAccessible *_retval);

  /**
   * Return an nsIAccessible for a DOM node in pres shell for this DOM window.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode   The DOM node to get an accessible for.
   * @param aDOMWin The DOM window containing the node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInWindow (in nsIDOMNode aNode, in nsIDOMWindow aDOMWin); */
  nsresult GetAccessibleInWindow(nsIDOMNode aNode, nsIDOMWindow aDOMWin, nsIAccessible *_retval);

  /**
   * Return an nsIAccessible for a DOM node in the given weak shell.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode      The DOM node to get an accessible for.
   * @param aPresShell The presentation shell which contains layout info for the DOM node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInWeakShell (in nsIDOMNode aNode, in nsIWeakReference aPresShell); */
  nsresult GetAccessibleInWeakShell(nsIDOMNode aNode, nsIWeakReference aPresShell, nsIAccessible *_retval);

  /**
   * Return an nsIAccessible for a DOM node in the given pres shell.
   * Create a new accessible of the appropriate type if necessary,
   * or use one from the accessibility cache if it already exists.
   * @param aNode      The DOM node to get an accessible for.
   * @param aPresShell The presentation shell which contains layout info for the DOM node.
   * @return The nsIAccessible for the given DOM node.
   */
  /* nsIAccessible getAccessibleInShell (in nsIDOMNode aNode, in nsIPresShell aPresShell); */
  nsresult GetAccessibleInShell(nsIDOMNode aNode, nsIPresShell aPresShell, nsIAccessible *_retval);

  /**
    * Return an nsIAccessNode for an already created DOM node in the given weak shell.
    * Does not create a new one -- only returns cached access nodes.
    * @param aNode      The DOM node to get an access node for.
    * @param aPresShell The presentation shell which contains layout info for the DOM node.
    * @return The nsIAccessNode for the given DOM node or null if
    *         an access node does not already exist for this DOM node.
    */
  /* nsIAccessNode getCachedAccessNode (in nsIDOMNode aNode, in nsIWeakReference aShell); */
  nsresult GetCachedAccessNode(nsIDOMNode aNode, nsIWeakReference aShell, nsIAccessNode *_retval);

  /**
    * Return an nsIAccessible for an already created DOM node in the given weak shell.
    * Does not create a new one -- only returns cached accessibles.
    * @param aNode      The DOM node to get an accessible for.
    * @param aPresShell The presentation shell which contains layout info for the DOM node.
    * @return The nsIAccessible for the given DOM node or null if
    *         an accessible does not already exist for this DOM node.
    */
  /* nsIAccessible getCachedAccessible (in nsIDOMNode aNode, in nsIWeakReference aShell); */
  nsresult GetCachedAccessible(nsIDOMNode aNode, nsIWeakReference aShell, nsIAccessible *_retval);

}

