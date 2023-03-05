/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeNode.idl
 */

module mozilla.xpcom.nsIDocShellTreeNode;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIDocShellTreeItem;


/* starting interface:    nsIDocShellTreeNode */
const char[] NS_IDOCSHELLTREENODE_IID_STR = "37f1ab73-f224-44b1-82f0-d2834ab1cec0";

const nsIID NS_IDOCSHELLTREENODE_IID= 
  {0x37f1ab73, 0xf224, 0x44b1, 
    [ 0x82, 0xf0, 0xd2, 0x83, 0x4a, 0xb1, 0xce, 0xc0 ]};

/**
 * The nsIDocShellTreeNode supplies the methods for interacting with children
 * of a docshell.  These are essentially the methods that turn a single docshell
 * into a docshell tree. 
 */
extern(Windows)
interface nsIDocShellTreeNode : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELLTREENODE_IID_STR;
  static const nsIID IID = NS_IDOCSHELLTREENODE_IID;

  /* readonly attribute long childCount; */
  nsresult GetChildCount(PRInt32 *aChildCount);

  /* void addChild (in nsIDocShellTreeItem child); */
  nsresult AddChild(nsIDocShellTreeItem child);

  /* void removeChild (in nsIDocShellTreeItem child); */
  nsresult RemoveChild(nsIDocShellTreeItem child);

  /* nsIDocShellTreeItem getChildAt (in long index); */
  nsresult GetChildAt(PRInt32 index, nsIDocShellTreeItem *_retval);

  /* nsIDocShellTreeItem findChildWithName (in wstring aName, in boolean aRecurse, in boolean aSameType, in nsIDocShellTreeItem aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsresult FindChildWithName(PRUnichar *aName, PRBool aRecurse, PRBool aSameType, nsIDocShellTreeItem aRequestor, nsIDocShellTreeItem aOriginalRequestor, nsIDocShellTreeItem *_retval);

}

