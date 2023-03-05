/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterService.idl
 */

module mozilla.dxpcom.nsIMsgFilterServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFilterService;


public import mozilla.dxpcom.nsIMsgFilterServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFilterList;
public import mozilla.dxpcom.nsIMsgFilterListD;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgFilterService */
class nsIMsgFilterServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFILTERSERVICE_IID;


  alias nsIMsgFilterService InnerType;

  this(nsIMsgFilterService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFilterService opCast() {
    return inner;
  }

  void opAssign(nsIMsgFilterService value) {
    inner = value;
  }

  /* nsIMsgFilterList OpenFilterList (in nsIFileSpec filterFile, in nsIMsgFolder rootFolder, in nsIMsgWindow msgWindow); */
  nsIMsgFilterListD  OpenFilterList(nsIFileSpecD filterFile, nsIMsgFolderD rootFolder, nsIMsgWindowD msgWindow){
    nsIMsgFilterList _retval;
    nsresult __result = inner.OpenFilterList(filterFile ? cast(nsIFileSpec)filterFile : null, rootFolder ? cast(nsIMsgFolder)rootFolder : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgFilterListD(_retval);
  }

  /* void CloseFilterList (in nsIMsgFilterList filterList); */
  void CloseFilterList(nsIMsgFilterListD filterList){
    nsresult __result = inner.CloseFilterList(filterList ? cast(nsIMsgFilterList)filterList : null);
    CheckException(__result);
  }

  /* void SaveFilterList (in nsIMsgFilterList filterList, in nsIFileSpec filterFile); */
  void SaveFilterList(nsIMsgFilterListD filterList, nsIFileSpecD filterFile){
    nsresult __result = inner.SaveFilterList(filterList ? cast(nsIMsgFilterList)filterList : null, filterFile ? cast(nsIFileSpec)filterFile : null);
    CheckException(__result);
  }

  /* void CancelFilterList (in nsIMsgFilterList filterList); */
  void CancelFilterList(nsIMsgFilterListD filterList){
    nsresult __result = inner.CancelFilterList(filterList ? cast(nsIMsgFilterList)filterList : null);
    CheckException(__result);
  }

  /* nsIMsgFilterList getTempFilterList (in nsIMsgFolder aFolder); */
  nsIMsgFilterListD  GetTempFilterList(nsIMsgFolderD aFolder){
    nsIMsgFilterList _retval;
    nsresult __result = inner.GetTempFilterList(aFolder ? cast(nsIMsgFolder)aFolder : null, &_retval);
    CheckException(__result);
    return new nsIMsgFilterListD(_retval);
  }

  /* void applyFiltersToFolders (in nsIMsgFilterList aFilterList, in nsISupportsArray aFolders, in nsIMsgWindow aMsgWindow); */
  void ApplyFiltersToFolders(nsIMsgFilterListD aFilterList, nsISupportsArrayD aFolders, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.ApplyFiltersToFolders(aFilterList ? cast(nsIMsgFilterList)aFilterList : null, aFolders ? cast(nsISupportsArray)aFolders : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

private:
  nsIMsgFilterService inner;

}

