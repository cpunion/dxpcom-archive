/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINativeScrollbar.idl
 */

module mozilla.xpcom.nsINativeScrollbar;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINativeScrollbar */
const char[] NS_INATIVESCROLLBAR_IID_STR = "b77380bc-610b-49e3-8df7-18cc946285c5";

const nsIID NS_INATIVESCROLLBAR_IID= 
  {0xb77380bc, 0x610b, 0x49e3, 
    [ 0x8d, 0xf7, 0x18, 0xcc, 0x94, 0x62, 0x85, 0xc5 ]};

extern(Windows)
interface nsINativeScrollbar : nsISupports {
  static const char[] IID_STR = NS_INATIVESCROLLBAR_IID_STR;
  static const nsIID IID = NS_INATIVESCROLLBAR_IID;

  /* void setContent (in nsIContent content, in nsISupports scrollbar, in nsIScrollbarMediator mediator); */
  nsresult SetContent(nsIContent content, nsISupports scrollbar, nsIScrollbarMediator mediator);

  /* readonly attribute long narrowSize; */
  nsresult GetNarrowSize(PRInt32 *aNarrowSize);

  /* attribute unsigned long position; */
  nsresult GetPosition(PRUint32 *aPosition);
  nsresult SetPosition(PRUint32 aPosition);

  /* attribute unsigned long maxRange; */
  nsresult GetMaxRange(PRUint32 *aMaxRange);
  nsresult SetMaxRange(PRUint32 aMaxRange);

  /* attribute unsigned long lineIncrement; */
  nsresult GetLineIncrement(PRUint32 *aLineIncrement);
  nsresult SetLineIncrement(PRUint32 aLineIncrement);

  /* attribute unsigned long viewSize; */
  nsresult GetViewSize(PRUint32 *aViewSize);
  nsresult SetViewSize(PRUint32 aViewSize);

}

