/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrBookSession.idl
 */

module mozilla.xpcom.nsIAddrBookSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAbListener;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.xpcom.nsIAbCard;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsIAddrBookSession */
const char[] NS_IADDRBOOKSESSION_IID_STR = "90533607-7205-473f-b688-ffb50eeb5d57";

const nsIID NS_IADDRBOOKSESSION_IID= 
  {0x90533607, 0x7205, 0x473f, 
    [ 0xb6, 0x88, 0xff, 0xb5, 0x0e, 0xeb, 0x5d, 0x57 ]};

extern(Windows)
interface nsIAddrBookSession : nsISupports {
  static const char[] IID_STR = NS_IADDRBOOKSESSION_IID_STR;
  static const nsIID IID = NS_IADDRBOOKSESSION_IID;

  /**
   * Adds a nsIAbListener to receive notifications of address book updates
   * according to the specified notifyFlags.
   *
   * @param  listener     The listener that is to receive updates.
   *
   * @param  notifyFlags  A bitwise-or of abListenerNotifyFlagValue items
   *                       specifying which notifications to receive.
   *
   */
  /* void addAddressBookListener (in nsIAbListener listener, in abListenerNotifyFlagValue notifyFlags); */
  nsresult AddAddressBookListener(nsIAbListener listener, abListenerNotifyFlagValue notifyFlags);

  /**
   * These flags specify when to receive notifications of address book updates
   * to be passed to addAddressBookListener.
   */
/**
   * An address book, mailing list or card is added.
   */
  enum { added = 1U };

  /**
   * A mailing list or card is removed from an address book.
   */
  enum { directoryItemRemoved = 2U };

  /**
   * An address book is removed
   */
  enum { directoryRemoved = 4U };

  /**
   * An address book, mailing list or card is changed.
   */
  enum { changed = 8U };

  /**
   * All of the above notifications are to be received.
   */
  enum { all = 4294967295U };

  /**
   * Removes a nsIAbListener from receive notifications of address book
   * updates.
   *
   * @param  listener     The listener that is to no longer receive updates.
   *
   */
  /* void removeAddressBookListener (in nsIAbListener listener); */
  nsresult RemoveAddressBookListener(nsIAbListener listener);

  /* void notifyItemPropertyChanged (in nsISupports item, in string property, in wstring oldValue, in wstring newValue); */
  nsresult NotifyItemPropertyChanged(nsISupports item, char *property, PRUnichar *oldValue, PRUnichar *newValue);

  /* void notifyDirectoryItemAdded (in nsIAbDirectory directory, in nsISupports item); */
  nsresult NotifyDirectoryItemAdded(nsIAbDirectory directory, nsISupports item);

  /**
   * when a card is deleted 
   */
  /* void notifyDirectoryItemDeleted (in nsIAbDirectory directory, in nsISupports item); */
  nsresult NotifyDirectoryItemDeleted(nsIAbDirectory directory, nsISupports item);

  /**
   * when a directory is deleted 
   */
  /* void notifyDirectoryDeleted (in nsIAbDirectory directory, in nsISupports item); */
  nsresult NotifyDirectoryDeleted(nsIAbDirectory directory, nsISupports item);

  /* readonly attribute nsILocalFile userProfileDirectory; */
  nsresult GetUserProfileDirectory(nsILocalFile  *aUserProfileDirectory);

  /** 
   * generate the name from the card, using the firstName and lastName and the displayName
   *
   * format follows the "mail.addr_book.lastnamefirst" pref values
   *
   * 0 = generated name is displayName
   * 1 = lastFirst, formatted following lastFirstFormat (see addressBook.properties)
   * 2 = firstLast, formatted following firstLastFormat (see addressBook.properties)
   *
   * we allow the caller to cache the pref value, so we don't have to go to prefs every time.
   */
  /* wstring generateNameFromCard (in nsIAbCard card, in long generateFormat); */
  nsresult GenerateNameFromCard(nsIAbCard card, PRInt32 generateFormat, PRUnichar **_retval);

  /** 
   * generate the phonetic name from the card, using the firstName and lastName
   *
   */
  /* wstring generatePhoneticNameFromCard (in nsIAbCard aCard, in boolean aLastNameFirst); */
  nsresult GeneratePhoneticNameFromCard(nsIAbCard aCard, PRBool aLastNameFirst, PRUnichar **_retval);

}

