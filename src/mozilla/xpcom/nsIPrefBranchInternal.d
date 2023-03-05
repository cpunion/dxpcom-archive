/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefBranchInternal.idl
 */

module mozilla.xpcom.nsIPrefBranchInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPrefBranch2;


/* starting interface:    nsIPrefBranchInternal */
const char[] NS_IPREFBRANCHINTERNAL_IID_STR = "d1d412d9-15d6-4a6a-9533-b949dc175ff5";

const nsIID NS_IPREFBRANCHINTERNAL_IID= 
  {0xd1d412d9, 0x15d6, 0x4a6a, 
    [ 0x95, 0x33, 0xb9, 0x49, 0xdc, 0x17, 0x5f, 0xf5 ]};

/**
 * An empty interface to provide backwards compatibility for existing code that
 * bsmedberg didn't want to break all at once. Don't use me!
 *
 * @status NON-FROZEN interface WHICH WILL PROBABLY GO AWAY.
 */
extern(Windows)
interface nsIPrefBranchInternal : nsIPrefBranch2 {
  static const char[] IID_STR = NS_IPREFBRANCHINTERNAL_IID_STR;
  static const nsIID IID = NS_IPREFBRANCHINTERNAL_IID;

}

