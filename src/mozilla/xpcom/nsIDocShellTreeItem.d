/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeItem.idl
 */

module mozilla.xpcom.nsIDocShellTreeItem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShellTreeOwner; /* forward declaration */


/* starting interface:    nsIDocShellTreeItem */
const char[] NS_IDOCSHELLTREEITEM_IID_STR = "7d935d63-6d2a-4600-afb5-9a4f7d68b825";

const nsIID NS_IDOCSHELLTREEITEM_IID= 
  {0x7d935d63, 0x6d2a, 0x4600, 
    [ 0xaf, 0xb5, 0x9a, 0x4f, 0x7d, 0x68, 0xb8, 0x25 ]};

/**
 * The nsIDocShellTreeItem supplies the methods that are required of any item
 * that wishes to be able to live within the docshell tree either as a middle
 * node or a leaf. 
 */
extern(Windows)
interface nsIDocShellTreeItem : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELLTREEITEM_IID_STR;
  static const nsIID IID = NS_IDOCSHELLTREEITEM_IID;

  /* attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);
  nsresult SetName(PRUnichar * aName);

  /**
         * Compares the provided name against the item's name and
         * returns the appropriate result.
         *
         * @return <CODE>PR_TRUE</CODE> if names match;
         *         <CODE>PR_FALSE</CODE> otherwise.
         */
  /* boolean nameEquals (in wstring name); */
  nsresult NameEquals(PRUnichar *name, PRBool *_retval);

  enum { typeChrome = 0 };

  enum { typeContent = 1 };

  enum { typeContentWrapper = 2 };

  enum { typeChromeWrapper = 3 };

  enum { typeAll = 2147483647 };

  /* attribute long itemType; */
  nsresult GetItemType(PRInt32 *aItemType);
  nsresult SetItemType(PRInt32 aItemType);

  /* readonly attribute nsIDocShellTreeItem parent; */
  nsresult GetParent(nsIDocShellTreeItem  *aParent);

  /* readonly attribute nsIDocShellTreeItem sameTypeParent; */
  nsresult GetSameTypeParent(nsIDocShellTreeItem  *aSameTypeParent);

  /* readonly attribute nsIDocShellTreeItem rootTreeItem; */
  nsresult GetRootTreeItem(nsIDocShellTreeItem  *aRootTreeItem);

  /* readonly attribute nsIDocShellTreeItem sameTypeRootTreeItem; */
  nsresult GetSameTypeRootTreeItem(nsIDocShellTreeItem  *aSameTypeRootTreeItem);

  /* nsIDocShellTreeItem findItemWithName (in wstring name, in nsISupports aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsresult FindItemWithName(PRUnichar *name, nsISupports aRequestor, nsIDocShellTreeItem aOriginalRequestor, nsIDocShellTreeItem *_retval);

  /* readonly attribute nsIDocShellTreeOwner treeOwner; */
  nsresult GetTreeOwner(nsIDocShellTreeOwner  *aTreeOwner);

  /* [noscript] void setTreeOwner (in nsIDocShellTreeOwner treeOwner); */
  nsresult SetTreeOwner(nsIDocShellTreeOwner treeOwner);

  /* attribute long childOffset; */
  nsresult GetChildOffset(PRInt32 *aChildOffset);
  nsresult SetChildOffset(PRInt32 aChildOffset);

}

