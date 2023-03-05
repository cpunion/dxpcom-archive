/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessengerMigrator.idl
 */

module mozilla.xpcom.nsIMessengerMigrator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIdentity;


/* starting interface:    nsIMessengerMigrator */
const char[] NS_IMESSENGERMIGRATOR_IID_STR = "54818d98-1dd2-11b2-82aa-a9197f997503";

const nsIID NS_IMESSENGERMIGRATOR_IID= 
  {0x54818d98, 0x1dd2, 0x11b2, 
    [ 0x82, 0xaa, 0xa9, 0x19, 0x7f, 0x99, 0x75, 0x03 ]};

extern(Windows)
interface nsIMessengerMigrator : nsISupports {
  static const char[] IID_STR = NS_IMESSENGERMIGRATOR_IID_STR;
  static const nsIID IID = NS_IMESSENGERMIGRATOR_IID;

  /* void UpgradePrefs (); */
  nsresult UpgradePrefs();

  /* void createLocalMailAccount (in boolean migrating); */
  nsresult CreateLocalMailAccount(PRBool migrating);

}

