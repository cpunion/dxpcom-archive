/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeOwner.idl
 */

module mozilla.xpcom.nsIDocShellTreeOwner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShellTreeItem; /* forward declaration */


/* starting interface:    nsIDocShellTreeOwner */
const char[] NS_IDOCSHELLTREEOWNER_IID_STR = "9e508466-5ebb-4618-abfa-9ad47bed0b2e";

const nsIID NS_IDOCSHELLTREEOWNER_IID= 
  {0x9e508466, 0x5ebb, 0x4618, 
    [ 0xab, 0xfa, 0x9a, 0xd4, 0x7b, 0xed, 0x0b, 0x2e ]};

extern(Windows)
interface nsIDocShellTreeOwner : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELLTREEOWNER_IID_STR;
  static const nsIID IID = NS_IDOCSHELLTREEOWNER_IID;

  /* nsIDocShellTreeItem findItemWithName (in wstring name, in nsIDocShellTreeItem aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsresult FindItemWithName(PRUnichar *name, nsIDocShellTreeItem aRequestor, nsIDocShellTreeItem aOriginalRequestor, nsIDocShellTreeItem *_retval);

  /* void contentShellAdded (in nsIDocShellTreeItem aContentShell, in boolean aPrimary, in wstring aID); */
  nsresult ContentShellAdded(nsIDocShellTreeItem aContentShell, PRBool aPrimary, PRUnichar *aID);

  /* readonly attribute nsIDocShellTreeItem primaryContentShell; */
  nsresult GetPrimaryContentShell(nsIDocShellTreeItem  *aPrimaryContentShell);

  /* void sizeShellTo (in nsIDocShellTreeItem shell, in long cx, in long cy); */
  nsresult SizeShellTo(nsIDocShellTreeItem shell, PRInt32 cx, PRInt32 cy);

  /* void setPersistence (in boolean aPersistPosition, in boolean aPersistSize, in boolean aPersistSizeMode); */
  nsresult SetPersistence(PRBool aPersistPosition, PRBool aPersistSize, PRBool aPersistSizeMode);

  /* void getPersistence (out boolean aPersistPosition, out boolean aPersistSize, out boolean aPersistSizeMode); */
  nsresult GetPersistence(PRBool *aPersistPosition, PRBool *aPersistSize, PRBool *aPersistSizeMode);

}


/* starting interface:    nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH */
const char[] NS_IDOCSHELLTREEOWNER_MOZILLA_1_8_BRANCH_IID_STR = "3c2a6927-e923-4ea8-bbda-a335c768ce4e";

const nsIID NS_IDOCSHELLTREEOWNER_MOZILLA_1_8_BRANCH_IID= 
  {0x3c2a6927, 0xe923, 0x4ea8, 
    [ 0xbb, 0xda, 0xa3, 0x35, 0xc7, 0x68, 0xce, 0x4e ]};

/**
 * Interface added to handle window targeting in tabbrowser.  This is a total
 * hack that's only needed to work around the fact that the tree owner api is
 * really pretty useless for dealing with multiple "real" browsers in the same
 * "docshell tree" and that there's no way to set up multiple treeowners in
 * XUL-land right now.  Gecko 1.9 will NOT be shipping this interface, and
 * nsIDocShellTreeOwner will hopefully be improved significantly.
 *
 * @status TEMPORARY
 */
extern(Windows)
interface nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH : nsIDocShellTreeOwner {
  static const char[] IID_STR = NS_IDOCSHELLTREEOWNER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOCSHELLTREEOWNER_MOZILLA_1_8_BRANCH_IID;

  /**
   * Called when a content shell is added to the docshell tree.  This is _only_
   * called for "root" content shells (that is, ones whose parent is a chrome
   * shell).
   *
   * @param aContentShell the shell being added.
   * @param aPrimary whether the shell is primary.
   * @param aTargetable whether the shell can be a target for named window
   *                    targeting.
   * @param aID the "id" of the shell.  What this actually means is undefined.
   *            Don't rely on this for anything.
   */
  /* void contentShellAdded2 (in nsIDocShellTreeItem aContentShell, in boolean aPrimary, in boolean aTargetable, in AString aID); */
  nsresult ContentShellAdded2(nsIDocShellTreeItem aContentShell, PRBool aPrimary, PRBool aTargetable, nsAString * aID);

  /**
   * Called when a content shell is removed from the docshell tree.  This is
   * _only_ called for "root" content shells (that is, ones whose parent is a
   * chrome shell).  Note that if aContentShell was never added,
   * contentShellRemoved should just do nothing.
   *
   * @param aContentShell the shell being removed.
   */
  /* void contentShellRemoved (in nsIDocShellTreeItem aContentShell); */
  nsresult ContentShellRemoved(nsIDocShellTreeItem aContentShell);

}

