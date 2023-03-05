/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrBookSession.idl
 */

module mozilla.dxpcom.nsIAddrBookSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddrBookSession;


public import mozilla.dxpcom.nsIAddrBookSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAbListener;
public import mozilla.dxpcom.nsIAbListenerD;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.dxpcom.nsIAbDirectoryD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIAddrBookSession */
class nsIAddrBookSessionD : public nsISupportsD {

  static const nsIID IID = NS_IADDRBOOKSESSION_IID;


  alias nsIAddrBookSession InnerType;

  this(nsIAddrBookSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddrBookSession opCast() {
    return inner;
  }

  void opAssign(nsIAddrBookSession value) {
    inner = value;
  }

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
  void AddAddressBookListener(nsIAbListenerD listener, abListenerNotifyFlagValue notifyFlags){
    nsresult __result = inner.AddAddressBookListener(listener ? cast(nsIAbListener)listener : null, notifyFlags);
    CheckException(__result);
  }

  /**
   * These flags specify when to receive notifications of address book updates
   * to be passed to addAddressBookListener.
   */
/**
   * An address book, mailing list or card is added.
   */
  enum { added = 1U }

  /**
   * A mailing list or card is removed from an address book.
   */
  enum { directoryItemRemoved = 2U }

  /**
   * An address book is removed
   */
  enum { directoryRemoved = 4U }

  /**
   * An address book, mailing list or card is changed.
   */
  enum { changed = 8U }

  /**
   * All of the above notifications are to be received.
   */
  enum { all = 4294967295U }

  /**
   * Removes a nsIAbListener from receive notifications of address book
   * updates.
   *
   * @param  listener     The listener that is to no longer receive updates.
   *
   */
  /* void removeAddressBookListener (in nsIAbListener listener); */
  void RemoveAddressBookListener(nsIAbListenerD listener){
    nsresult __result = inner.RemoveAddressBookListener(listener ? cast(nsIAbListener)listener : null);
    CheckException(__result);
  }

  /* void notifyItemPropertyChanged (in nsISupports item, in string property, in wstring oldValue, in wstring newValue); */
  void NotifyItemPropertyChanged(nsISupportsD item, char*property, PRUnichar*oldValue, PRUnichar*newValue){
    nsresult __result = inner.NotifyItemPropertyChanged(item ? cast(nsISupports)item : null, property, oldValue, newValue);
    CheckException(__result);
  }

  /* void notifyDirectoryItemAdded (in nsIAbDirectory directory, in nsISupports item); */
  void NotifyDirectoryItemAdded(nsIAbDirectoryD directory, nsISupportsD item){
    nsresult __result = inner.NotifyDirectoryItemAdded(directory ? cast(nsIAbDirectory)directory : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /**
   * when a card is deleted 
   */
  /* void notifyDirectoryItemDeleted (in nsIAbDirectory directory, in nsISupports item); */
  void NotifyDirectoryItemDeleted(nsIAbDirectoryD directory, nsISupportsD item){
    nsresult __result = inner.NotifyDirectoryItemDeleted(directory ? cast(nsIAbDirectory)directory : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /**
   * when a directory is deleted 
   */
  /* void notifyDirectoryDeleted (in nsIAbDirectory directory, in nsISupports item); */
  void NotifyDirectoryDeleted(nsIAbDirectoryD directory, nsISupportsD item){
    nsresult __result = inner.NotifyDirectoryDeleted(directory ? cast(nsIAbDirectory)directory : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* readonly attribute nsILocalFile userProfileDirectory; */
  nsILocalFileD  UserProfileDirectory(){
    nsILocalFile value;
    nsresult __result = inner.GetUserProfileDirectory(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

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
  PRUnichar* GenerateNameFromCard(nsIAbCardD card, PRInt32 generateFormat){
    PRUnichar* _retval;
    nsresult __result = inner.GenerateNameFromCard(card ? cast(nsIAbCard)card : null, generateFormat, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * generate the phonetic name from the card, using the firstName and lastName
   *
   */
  /* wstring generatePhoneticNameFromCard (in nsIAbCard aCard, in boolean aLastNameFirst); */
  PRUnichar* GeneratePhoneticNameFromCard(nsIAbCardD aCard, PRBool aLastNameFirst){
    PRUnichar* _retval;
    nsresult __result = inner.GeneratePhoneticNameFromCard(aCard ? cast(nsIAbCard)aCard : null, aLastNameFirst, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAddrBookSession inner;

}

