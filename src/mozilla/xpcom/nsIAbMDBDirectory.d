/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbMDBDirectory.idl
 */

module mozilla.xpcom.nsIAbMDBDirectory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.xpcom.nsIAbDirectory;


/* starting interface:    nsIAbMDBDirectory */
const char[] NS_IABMDBDIRECTORY_IID_STR = "08669294-66c6-414e-ae2d-69348a62f362";

const nsIID NS_IABMDBDIRECTORY_IID= 
  {0x08669294, 0x66c6, 0x414e, 
    [ 0xae, 0x2d, 0x69, 0x34, 0x8a, 0x62, 0xf3, 0x62 ]};

extern(Windows)
interface nsIAbMDBDirectory : nsISupports {
  static const char[] IID_STR = NS_IABMDBDIRECTORY_IID_STR;
  static const nsIID IID = NS_IABMDBDIRECTORY_IID;

  /* nsIAbDirectory addDirectory (in string uriName); */
  nsresult AddDirectory(char *uriName, nsIAbDirectory *_retval);

  /* string getDirUri (); */
  nsresult GetDirUri(char **_retval);

  /* [noscript] void removeElementsFromAddressList (); */
  nsresult RemoveElementsFromAddressList();

  /* void addMailListToDirectory (in nsIAbDirectory mailList); */
  nsresult AddMailListToDirectory(nsIAbDirectory mailList);

  /* void copyDBMailList (in nsIAbMDBDirectory srcListDB); */
  nsresult CopyDBMailList(nsIAbMDBDirectory srcListDB);

  /* void addAddressToList (in nsIAbCard card); */
  nsresult AddAddressToList(nsIAbCard card);

  /* void removeEmailAddressAt (in unsigned long aIndex); */
  nsresult RemoveEmailAddressAt(PRUint32 aIndex);

  /* attribute unsigned long dbRowID; */
  nsresult GetDbRowID(PRUint32 *aDbRowID);
  nsresult SetDbRowID(PRUint32 aDbRowID);

  /* [noscript] void notifyDirItemAdded (in nsISupports item); */
  nsresult NotifyDirItemAdded(nsISupports item);

  /* [noscript] void clearDatabase (); */
  nsresult ClearDatabase();

  /* boolean hasCardForEmailAddress (in string emailAddress); */
  nsresult HasCardForEmailAddress(char *emailAddress, PRBool *_retval);

  /** 
   * returns the address card for the specified email address. Returns NULL if 
   * we were unable to find a card for the specified e-mail address
   */
  /* nsIAbCard cardForEmailAddress (in string emailAddress); */
  nsresult CardForEmailAddress(char *emailAddress, nsIAbCard *_retval);

}

