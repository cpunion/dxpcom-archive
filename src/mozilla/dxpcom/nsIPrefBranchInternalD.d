/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefBranchInternal.idl
 */

module mozilla.dxpcom.nsIPrefBranchInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefBranchInternal;


public import mozilla.dxpcom.nsIPrefBranchInternalD;

public import mozilla.xpcom.nsIPrefBranch2;
public import mozilla.dxpcom.nsIPrefBranch2D;


/* starting wrapper class:    nsIPrefBranchInternal */
/**
 * An empty interface to provide backwards compatibility for existing code that
 * bsmedberg didn't want to break all at once. Don't use me!
 *
 * @status NON-FROZEN interface WHICH WILL PROBABLY GO AWAY.
 */
class nsIPrefBranchInternalD : public nsIPrefBranch2D {

  static const nsIID IID = NS_IPREFBRANCHINTERNAL_IID;


  alias nsIPrefBranchInternal InnerType;

  this(nsIPrefBranchInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefBranchInternal opCast() {
    return inner;
  }

  void opAssign(nsIPrefBranchInternal value) {
    inner = value;
  }

private:
  nsIPrefBranchInternal inner;

}

