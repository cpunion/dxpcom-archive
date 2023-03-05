/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDeepTreeWalker.idl
 */

module mozilla.xpcom.inIDeepTreeWalker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIDOMTreeWalker;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    inIDeepTreeWalker */
const char[] INIDEEPTREEWALKER_IID_STR = "91fca0e9-99d6-406b-9d78-4c96f11e9ee4";

const nsIID INIDEEPTREEWALKER_IID= 
  {0x91fca0e9, 0x99d6, 0x406b, 
    [ 0x9d, 0x78, 0x4c, 0x96, 0xf1, 0x1e, 0x9e, 0xe4 ]};

extern(Windows)
interface inIDeepTreeWalker : nsIDOMTreeWalker {
  static const char[] IID_STR = INIDEEPTREEWALKER_IID_STR;
  static const nsIID IID = INIDEEPTREEWALKER_IID;

  /* attribute boolean showAnonymousContent; */
  nsresult GetShowAnonymousContent(PRBool *aShowAnonymousContent);
  nsresult SetShowAnonymousContent(PRBool aShowAnonymousContent);

  /* attribute boolean showSubDocuments; */
  nsresult GetShowSubDocuments(PRBool *aShowSubDocuments);
  nsresult SetShowSubDocuments(PRBool aShowSubDocuments);

  /* void init (in nsIDOMNode aRoot, in unsigned long aWhatToShow); */
  nsresult Init(nsIDOMNode aRoot, PRUint32 aWhatToShow);

}

