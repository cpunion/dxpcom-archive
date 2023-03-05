/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailViewList.idl
 */

module mozilla.xpcom.nsIMsgMailViewList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgMailView;

alias PRInt32 nsMsgMailViewListFileAttribValue;


/* starting interface:    nsIMsgMailViewList */
const char[] NS_IMSGMAILVIEWLIST_IID_STR = "6dd798d7-9528-49e6-9447-3aaf14d2d36f";

const nsIID NS_IMSGMAILVIEWLIST_IID= 
  {0x6dd798d7, 0x9528, 0x49e6, 
    [ 0x94, 0x47, 0x3a, 0xaf, 0x14, 0xd2, 0xd3, 0x6f ]};

extern(Windows)
interface nsIMsgMailViewList : nsISupports {
  static const char[] IID_STR = NS_IMSGMAILVIEWLIST_IID_STR;
  static const nsIID IID = NS_IMSGMAILVIEWLIST_IID;

  /* readonly attribute unsigned long mailViewCount; */
  nsresult GetMailViewCount(PRUint32 *aMailViewCount);

  /* nsIMsgMailView getMailViewAt (in unsigned long mailViewIndex); */
  nsresult GetMailViewAt(PRUint32 mailViewIndex, nsIMsgMailView *_retval);

  /* void addMailView (in nsIMsgMailView mailView); */
  nsresult AddMailView(nsIMsgMailView mailView);

  /* void removeMailView (in nsIMsgMailView mailView); */
  nsresult RemoveMailView(nsIMsgMailView mailView);

  /* nsIMsgMailView createMailView (); */
  nsresult CreateMailView(nsIMsgMailView *_retval);

  /* void save (); */
  nsresult Save();

}

