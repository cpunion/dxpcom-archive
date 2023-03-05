/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIXPIStubHook.idl
 */

module mozilla.xpcom.nsPIXPIStubHook;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsPIXPIStubHook */
const char[] NS_PIXPISTUBHOOK_IID_STR = "089929f0-4ed9-11d3-abdd-000064657374";

const nsIID NS_PIXPISTUBHOOK_IID= 
  {0x089929f0, 0x4ed9, 0x11d3, 
    [ 0xab, 0xdd, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * nsPIXPIStubHook
 *
 * Used by the Install Wizard to point at the eventual target dir and
 * override the default assumption that the wizard itself is the program.
 */
extern(Windows)
interface nsPIXPIStubHook : nsISupports {
  static const char[] IID_STR = NS_PIXPISTUBHOOK_IID_STR;
  static const nsIID IID = NS_PIXPISTUBHOOK_IID;

  /* void StubInitialize (in nsIFile dir, in string logName); */
  nsresult StubInitialize(nsIFile dir, char *logName);

}

