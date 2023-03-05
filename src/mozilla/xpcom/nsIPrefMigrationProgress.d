/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefMigrationProgress.idl
 */

module mozilla.xpcom.nsIPrefMigrationProgress;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPrefMigrationProgress */
const char[] NS_IPREFMIGRATIONPROGRESS_IID_STR = "7da18222-6a6b-11d3-8316-004005263078";

const nsIID NS_IPREFMIGRATIONPROGRESS_IID= 
  {0x7da18222, 0x6a6b, 0x11d3, 
    [ 0x83, 0x16, 0x00, 0x40, 0x05, 0x26, 0x30, 0x78 ]};

extern(Windows)
interface nsIPrefMigrationProgress : nsISupports {
  static const char[] IID_STR = NS_IPREFMIGRATIONPROGRESS_IID_STR;
  static const nsIID IID = NS_IPREFMIGRATIONPROGRESS_IID;

  /* void CreateProfileProgressDialog (); */
  nsresult CreateProfileProgressDialog();

  /* void MigrationStarted ([const] in string UIPackageName); */
  nsresult MigrationStarted(char *UIPackageName);

  /* void IncrementProgressBar (); */
  nsresult IncrementProgressBar();

}

