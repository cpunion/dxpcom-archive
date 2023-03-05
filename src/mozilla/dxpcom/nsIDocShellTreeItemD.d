/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeItem.idl
 */

module mozilla.dxpcom.nsIDocShellTreeItemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShellTreeItem;


public import mozilla.dxpcom.nsIDocShellTreeItemD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShellTreeOwner;

public import mozilla.dxpcom.nsIDocShellTreeOwnerD;


/* starting wrapper class:    nsIDocShellTreeItem */
/**
 * The nsIDocShellTreeItem supplies the methods that are required of any item
 * that wishes to be able to live within the docshell tree either as a middle
 * node or a leaf. 
 */
class nsIDocShellTreeItemD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELLTREEITEM_IID;


  alias nsIDocShellTreeItem InnerType;

  this(nsIDocShellTreeItem intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellTreeItem opCast() {
    return inner;
  }

  void opAssign(nsIDocShellTreeItem value) {
    inner = value;
  }

  /* attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }
  void Name(PRUnichar* aName){
    nsresult __result = inner.SetName(aName);
    CheckException(__result);
  }

  /**
         * Compares the provided name against the item's name and
         * returns the appropriate result.
         *
         * @return <CODE>PR_TRUE</CODE> if names match;
         *         <CODE>PR_FALSE</CODE> otherwise.
         */
  /* boolean nameEquals (in wstring name); */
  PRBool NameEquals(PRUnichar*name){
    PRBool _retval;
    nsresult __result = inner.NameEquals(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  enum { typeChrome = 0 }

  enum { typeContent = 1 }

  enum { typeContentWrapper = 2 }

  enum { typeChromeWrapper = 3 }

  enum { typeAll = 2147483647 }

  /* attribute long itemType; */
  PRInt32 ItemType(){
    PRInt32 value;
    nsresult __result = inner.GetItemType(&value);
    CheckException(__result);
    return value;
  }
  void ItemType(PRInt32 aItemType){
    nsresult __result = inner.SetItemType(aItemType);
    CheckException(__result);
  }

  /* readonly attribute nsIDocShellTreeItem parent; */
  nsIDocShellTreeItemD  Parent(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /* readonly attribute nsIDocShellTreeItem sameTypeParent; */
  nsIDocShellTreeItemD  SameTypeParent(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetSameTypeParent(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /* readonly attribute nsIDocShellTreeItem rootTreeItem; */
  nsIDocShellTreeItemD  RootTreeItem(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetRootTreeItem(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /* readonly attribute nsIDocShellTreeItem sameTypeRootTreeItem; */
  nsIDocShellTreeItemD  SameTypeRootTreeItem(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetSameTypeRootTreeItem(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /* nsIDocShellTreeItem findItemWithName (in wstring name, in nsISupports aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsIDocShellTreeItemD  FindItemWithName(PRUnichar*name, nsISupportsD aRequestor, nsIDocShellTreeItemD aOriginalRequestor){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.FindItemWithName(name, aRequestor ? cast(nsISupports)aRequestor : null, aOriginalRequestor ? cast(nsIDocShellTreeItem)aOriginalRequestor : null, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

  /* readonly attribute nsIDocShellTreeOwner treeOwner; */
  nsIDocShellTreeOwnerD  TreeOwner(){
    nsIDocShellTreeOwner value;
    nsresult __result = inner.GetTreeOwner(&value);
    CheckException(__result);
    return new nsIDocShellTreeOwnerD(value);
  }

  /* [noscript] void setTreeOwner (in nsIDocShellTreeOwner treeOwner); */
  void SetTreeOwner(nsIDocShellTreeOwnerD treeOwner){
    nsresult __result = inner.SetTreeOwner(treeOwner ? cast(nsIDocShellTreeOwner)treeOwner : null);
    CheckException(__result);
  }

  /* attribute long childOffset; */
  PRInt32 ChildOffset(){
    PRInt32 value;
    nsresult __result = inner.GetChildOffset(&value);
    CheckException(__result);
    return value;
  }
  void ChildOffset(PRInt32 aChildOffset){
    nsresult __result = inner.SetChildOffset(aChildOffset);
    CheckException(__result);
  }

private:
  nsIDocShellTreeItem inner;

}

