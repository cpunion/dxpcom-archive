/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISample.idl
 */

module mozilla.xpcom.nsISample;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISample */
const char[] NS_ISAMPLE_IID_STR = "7cb5b7a1-07d7-11d3-bde2-000064657374";

const nsIID NS_ISAMPLE_IID= 
  {0x7cb5b7a1, 0x07d7, 0x11d3, 
    [ 0xbd, 0xe2, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * The uuid is a unique number identifying the interface normally
 * called IID. It can be generated as follows:
 *
 * Windows: guidgen.exe
 * Unix: uuidgen which comes with e2fsprogs package
 * Mac: ???
 * All platform: Using irc, connect to irc.mozilla.org and type in
 *				/join #mozilla
 *				/msg mozbot uuid
 *
 */
extern(Windows)
interface nsISample : nsISupports {
  static const char[] IID_STR = NS_ISAMPLE_IID_STR;
  static const nsIID IID = NS_ISAMPLE_IID;

  /* attribute string value; */
  nsresult GetValue(char * *aValue);
  nsresult SetValue(char * aValue);

  /* void writeValue (in string aPrefix); */
  nsresult WriteValue(char *aPrefix);

  /* void poke (in string aValue); */
  nsresult Poke(char *aValue);

}

