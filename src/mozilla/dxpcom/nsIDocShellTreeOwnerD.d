/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellTreeOwner.idl
 */

module mozilla.dxpcom.nsIDocShellTreeOwnerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShellTreeOwner;


public import mozilla.dxpcom.nsIDocShellTreeOwnerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShellTreeItem;

public import mozilla.dxpcom.nsIDocShellTreeItemD;


/* starting wrapper class:    nsIDocShellTreeOwner */
class nsIDocShellTreeOwnerD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELLTREEOWNER_IID;


  alias nsIDocShellTreeOwner InnerType;

  this(nsIDocShellTreeOwner intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellTreeOwner opCast() {
    return inner;
  }

  void opAssign(nsIDocShellTreeOwner value) {
    inner = value;
  }

  /* nsIDocShellTreeItem findItemWithName (in wstring name, in nsIDocShellTreeItem aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsIDocShellTreeItemD  FindItemWithName(PRUnichar*name, nsIDocShellTreeItemD aRequestor, nsIDocShellTreeItemD aOriginalRequestor){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.FindItemWithName(name, aRequestor ? cast(nsIDocShellTreeItem)aRequestor : null, aOriginalRequestor ? cast(nsIDocShellTreeItem)aOriginalRequestor : null, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

  /* void contentShellAdded (in nsIDocShellTreeItem aContentShell, in boolean aPrimary, in wstring aID); */
  void ContentShellAdded(nsIDocShellTreeItemD aContentShell, PRBool aPrimary, PRUnichar*aID){
    nsresult __result = inner.ContentShellAdded(aContentShell ? cast(nsIDocShellTreeItem)aContentShell : null, aPrimary, aID);
    CheckException(__result);
  }

  /* readonly attribute nsIDocShellTreeItem primaryContentShell; */
  nsIDocShellTreeItemD  PrimaryContentShell(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetPrimaryContentShell(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /* void sizeShellTo (in nsIDocShellTreeItem shell, in long cx, in long cy); */
  void SizeShellTo(nsIDocShellTreeItemD shell, PRInt32 cx, PRInt32 cy){
    nsresult __result = inner.SizeShellTo(shell ? cast(nsIDocShellTreeItem)shell : null, cx, cy);
    CheckException(__result);
  }

  /* void setPersistence (in boolean aPersistPosition, in boolean aPersistSize, in boolean aPersistSizeMode); */
  void SetPersistence(PRBool aPersistPosition, PRBool aPersistSize, PRBool aPersistSizeMode){
    nsresult __result = inner.SetPersistence(aPersistPosition, aPersistSize, aPersistSizeMode);
    CheckException(__result);
  }

  /* void getPersistence (out boolean aPersistPosition, out boolean aPersistSize, out boolean aPersistSizeMode); */
  void GetPersistence(out PRBool aPersistPosition, out PRBool aPersistSize, out PRBool aPersistSizeMode){
    nsresult __result = inner.GetPersistence(&aPersistPosition, &aPersistSize, &aPersistSizeMode);
    CheckException(__result);
  }

private:
  nsIDocShellTreeOwner inner;

}


/* starting wrapper class:    nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH */
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
class nsIDocShellTreeOwner_MOZILLA_1_8_BRANCHD : public nsIDocShellTreeOwnerD {

  static const nsIID IID = NS_IDOCSHELLTREEOWNER_MOZILLA_1_8_BRANCH_IID;


  alias nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH InnerType;

  this(nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

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
  void ContentShellAdded2(nsIDocShellTreeItemD aContentShell, PRBool aPrimary, PRBool aTargetable, wchar[] aID){
    scope auto _aID = new AString(aID);
    nsresult __result = inner.ContentShellAdded2(aContentShell ? cast(nsIDocShellTreeItem)aContentShell : null, aPrimary, aTargetable, cast(nsAString*)_aID);
    CheckException(__result);
  }

  /**
   * Called when a content shell is removed from the docshell tree.  This is
   * _only_ called for "root" content shells (that is, ones whose parent is a
   * chrome shell).  Note that if aContentShell was never added,
   * contentShellRemoved should just do nothing.
   *
   * @param aContentShell the shell being removed.
   */
  /* void contentShellRemoved (in nsIDocShellTreeItem aContentShell); */
  void ContentShellRemoved(nsIDocShellTreeItemD aContentShell){
    nsresult __result = inner.ContentShellRemoved(aContentShell ? cast(nsIDocShellTreeItem)aContentShell : null);
    CheckException(__result);
  }

private:
  nsIDocShellTreeOwner_MOZILLA_1_8_BRANCH inner;

}

