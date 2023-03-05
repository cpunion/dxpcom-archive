/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterService.idl
 */

module mozilla.xpcom.nsIMsgFilterService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFilterList;
public import mozilla.xpcom.nsIMsgWindow;


/* starting interface:    nsIMsgFilterService */
const char[] NS_IMSGFILTERSERVICE_IID_STR = "6673cad0-072e-11d3-8d70-00805f8a6617";

const nsIID NS_IMSGFILTERSERVICE_IID= 
  {0x6673cad0, 0x072e, 0x11d3, 
    [ 0x8d, 0x70, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsIMsgFilterService : nsISupports {
  static const char[] IID_STR = NS_IMSGFILTERSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGFILTERSERVICE_IID;

  /* nsIMsgFilterList OpenFilterList (in nsIFileSpec filterFile, in nsIMsgFolder rootFolder, in nsIMsgWindow msgWindow); */
  nsresult OpenFilterList(nsIFileSpec filterFile, nsIMsgFolder rootFolder, nsIMsgWindow msgWindow, nsIMsgFilterList *_retval);

  /* void CloseFilterList (in nsIMsgFilterList filterList); */
  nsresult CloseFilterList(nsIMsgFilterList filterList);

  /* void SaveFilterList (in nsIMsgFilterList filterList, in nsIFileSpec filterFile); */
  nsresult SaveFilterList(nsIMsgFilterList filterList, nsIFileSpec filterFile);

  /* void CancelFilterList (in nsIMsgFilterList filterList); */
  nsresult CancelFilterList(nsIMsgFilterList filterList);

  /* nsIMsgFilterList getTempFilterList (in nsIMsgFolder aFolder); */
  nsresult GetTempFilterList(nsIMsgFolder aFolder, nsIMsgFilterList *_retval);

  /* void applyFiltersToFolders (in nsIMsgFilterList aFilterList, in nsISupportsArray aFolders, in nsIMsgWindow aMsgWindow); */
  nsresult ApplyFiltersToFolders(nsIMsgFilterList aFilterList, nsISupportsArray aFolders, nsIMsgWindow aMsgWindow);

}

