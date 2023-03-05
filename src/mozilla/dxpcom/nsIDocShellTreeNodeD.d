/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeNode.idl
 */

module mozilla.dxpcom.nsIDocShellTreeNodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShellTreeNode;


public import mozilla.dxpcom.nsIDocShellTreeNodeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIDocShellTreeItem;
public import mozilla.dxpcom.nsIDocShellTreeItemD;


/* starting wrapper class:    nsIDocShellTreeNode */
/**
 * The nsIDocShellTreeNode supplies the methods for interacting with children
 * of a docshell.  These are essentially the methods that turn a single docshell
 * into a docshell tree. 
 */
class nsIDocShellTreeNodeD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELLTREENODE_IID;


  alias nsIDocShellTreeNode InnerType;

  this(nsIDocShellTreeNode intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellTreeNode opCast() {
    return inner;
  }

  void opAssign(nsIDocShellTreeNode value) {
    inner = value;
  }

  /* readonly attribute long childCount; */
  PRInt32 ChildCount(){
    PRInt32 value;
    nsresult __result = inner.GetChildCount(&value);
    CheckException(__result);
    return value;
  }

  /* void addChild (in nsIDocShellTreeItem child); */
  void AddChild(nsIDocShellTreeItemD child){
    nsresult __result = inner.AddChild(child ? cast(nsIDocShellTreeItem)child : null);
    CheckException(__result);
  }

  /* void removeChild (in nsIDocShellTreeItem child); */
  void RemoveChild(nsIDocShellTreeItemD child){
    nsresult __result = inner.RemoveChild(child ? cast(nsIDocShellTreeItem)child : null);
    CheckException(__result);
  }

  /* nsIDocShellTreeItem getChildAt (in long index); */
  nsIDocShellTreeItemD  GetChildAt(PRInt32 index){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.GetChildAt(index, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

  /* nsIDocShellTreeItem findChildWithName (in wstring aName, in boolean aRecurse, in boolean aSameType, in nsIDocShellTreeItem aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsIDocShellTreeItemD  FindChildWithName(PRUnichar*aName, PRBool aRecurse, PRBool aSameType, nsIDocShellTreeItemD aRequestor, nsIDocShellTreeItemD aOriginalRequestor){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.FindChildWithName(aName, aRecurse, aSameType, aRequestor ? cast(nsIDocShellTreeItem)aRequestor : null, aOriginalRequestor ? cast(nsIDocShellTreeItem)aOriginalRequestor : null, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

private:
  nsIDocShellTreeNode inner;

}

