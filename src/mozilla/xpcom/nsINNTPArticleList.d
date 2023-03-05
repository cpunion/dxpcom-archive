/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPArticleList.idl
 */

module mozilla.xpcom.nsINNTPArticleList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgNewsFolder; /* forward declaration */


/* starting interface:    nsINNTPArticleList */
const char[] NS_INNTPARTICLELIST_IID_STR = "921ac214-96b5-11d2-b7eb-00805f05ffa5";

const nsIID NS_INNTPARTICLELIST_IID= 
  {0x921ac214, 0x96b5, 0x11d2, 
    [ 0xb7, 0xeb, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsINNTPArticleList : nsISupports {
  static const char[] IID_STR = NS_INNTPARTICLELIST_IID_STR;
  static const nsIID IID = NS_INNTPARTICLELIST_IID;

  /* void initialize (in nsIMsgNewsFolder newsFolder); */
  nsresult Initialize(nsIMsgNewsFolder newsFolder);

  /* void addArticleKey (in long key); */
  nsresult AddArticleKey(PRInt32 key);

  /* void finishAddingArticleKeys (); */
  nsresult FinishAddingArticleKeys();

}

