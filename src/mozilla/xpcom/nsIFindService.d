/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFindService.idl
 */

module mozilla.xpcom.nsIFindService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIFindService */
const char[] NS_IFINDSERVICE_IID_STR = "5060b801-340e-11d5-be5b-b3e063ec6a3c";

const nsIID NS_IFINDSERVICE_IID= 
  {0x5060b801, 0x340e, 0x11d5, 
    [ 0xbe, 0x5b, 0xb3, 0xe0, 0x63, 0xec, 0x6a, 0x3c ]};

extern(Windows)
interface nsIFindService : nsISupports {
  static const char[] IID_STR = NS_IFINDSERVICE_IID_STR;
  static const nsIID IID = NS_IFINDSERVICE_IID;

  /* attribute AString searchString; */
  nsresult GetSearchString(nsAString * aSearchString);
  nsresult SetSearchString(nsAString * aSearchString);

  /* attribute AString replaceString; */
  nsresult GetReplaceString(nsAString * aReplaceString);
  nsresult SetReplaceString(nsAString * aReplaceString);

  /* attribute boolean findBackwards; */
  nsresult GetFindBackwards(PRBool *aFindBackwards);
  nsresult SetFindBackwards(PRBool aFindBackwards);

  /* attribute boolean wrapFind; */
  nsresult GetWrapFind(PRBool *aWrapFind);
  nsresult SetWrapFind(PRBool aWrapFind);

  /* attribute boolean entireWord; */
  nsresult GetEntireWord(PRBool *aEntireWord);
  nsresult SetEntireWord(PRBool aEntireWord);

  /* attribute boolean matchCase; */
  nsresult GetMatchCase(PRBool *aMatchCase);
  nsresult SetMatchCase(PRBool aMatchCase);

}

