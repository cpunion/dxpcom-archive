/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMacShellService.idl
 */

module mozilla.xpcom.nsIMacShellService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIShellService;


/* starting interface:    nsIMacShellService */
const char[] NS_IMACSHELLSERVICE_IID_STR = "7f8ca08e-1df4-4735-86e9-50dedb48e5e8";

const nsIID NS_IMACSHELLSERVICE_IID= 
  {0x7f8ca08e, 0x1df4, 0x4735, 
    [ 0x86, 0xe9, 0x50, 0xde, 0xdb, 0x48, 0xe5, 0xe8 ]};

extern(Windows)
interface nsIMacShellService : nsIShellService {
  static const char[] IID_STR = NS_IMACSHELLSERVICE_IID_STR;
  static const nsIID IID = NS_IMACSHELLSERVICE_IID;

  enum { APPLICATION_KEYCHAIN_ACCESS = 2 };

  enum { APPLICATION_NETWORK = 3 };

  enum { APPLICATION_DESKTOP = 4 };

}

