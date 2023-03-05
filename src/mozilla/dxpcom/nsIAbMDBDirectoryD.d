/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbMDBDirectory.idl
 */

module mozilla.dxpcom.nsIAbMDBDirectoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbMDBDirectory;


public import mozilla.dxpcom.nsIAbMDBDirectoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.dxpcom.nsIAbDirectoryD;


/* starting wrapper class:    nsIAbMDBDirectory */
class nsIAbMDBDirectoryD : public nsISupportsD {

  static const nsIID IID = NS_IABMDBDIRECTORY_IID;


  alias nsIAbMDBDirectory InnerType;

  this(nsIAbMDBDirectory intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbMDBDirectory opCast() {
    return inner;
  }

  void opAssign(nsIAbMDBDirectory value) {
    inner = value;
  }

  /* nsIAbDirectory addDirectory (in string uriName); */
  nsIAbDirectoryD  AddDirectory(char*uriName){
    nsIAbDirectory _retval;
    nsresult __result = inner.AddDirectory(uriName, &_retval);
    CheckException(__result);
    return new nsIAbDirectoryD(_retval);
  }

  /* string getDirUri (); */
  char* GetDirUri(){
    char* _retval;
    nsresult __result = inner.GetDirUri(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void removeElementsFromAddressList (); */
  void RemoveElementsFromAddressList(){
    nsresult __result = inner.RemoveElementsFromAddressList();
    CheckException(__result);
  }

  /* void addMailListToDirectory (in nsIAbDirectory mailList); */
  void AddMailListToDirectory(nsIAbDirectoryD mailList){
    nsresult __result = inner.AddMailListToDirectory(mailList ? cast(nsIAbDirectory)mailList : null);
    CheckException(__result);
  }

  /* void copyDBMailList (in nsIAbMDBDirectory srcListDB); */
  void CopyDBMailList(nsIAbMDBDirectoryD srcListDB){
    nsresult __result = inner.CopyDBMailList(srcListDB ? cast(nsIAbMDBDirectory)srcListDB : null);
    CheckException(__result);
  }

  /* void addAddressToList (in nsIAbCard card); */
  void AddAddressToList(nsIAbCardD card){
    nsresult __result = inner.AddAddressToList(card ? cast(nsIAbCard)card : null);
    CheckException(__result);
  }

  /* void removeEmailAddressAt (in unsigned long aIndex); */
  void RemoveEmailAddressAt(PRUint32 aIndex){
    nsresult __result = inner.RemoveEmailAddressAt(aIndex);
    CheckException(__result);
  }

  /* attribute unsigned long dbRowID; */
  PRUint32 DbRowID(){
    PRUint32 value;
    nsresult __result = inner.GetDbRowID(&value);
    CheckException(__result);
    return value;
  }
  void DbRowID(PRUint32 aDbRowID){
    nsresult __result = inner.SetDbRowID(aDbRowID);
    CheckException(__result);
  }

  /* [noscript] void notifyDirItemAdded (in nsISupports item); */
  void NotifyDirItemAdded(nsISupportsD item){
    nsresult __result = inner.NotifyDirItemAdded(item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* [noscript] void clearDatabase (); */
  void ClearDatabase(){
    nsresult __result = inner.ClearDatabase();
    CheckException(__result);
  }

  /* boolean hasCardForEmailAddress (in string emailAddress); */
  PRBool HasCardForEmailAddress(char*emailAddress){
    PRBool _retval;
    nsresult __result = inner.HasCardForEmailAddress(emailAddress, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * returns the address card for the specified email address. Returns NULL if 
   * we were unable to find a card for the specified e-mail address
   */
  /* nsIAbCard cardForEmailAddress (in string emailAddress); */
  nsIAbCardD  CardForEmailAddress(char*emailAddress){
    nsIAbCard _retval;
    nsresult __result = inner.CardForEmailAddress(emailAddress, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

private:
  nsIAbMDBDirectory inner;

}

