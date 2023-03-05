/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISound.idl
 */

module mozilla.xpcom.nsISound;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURL; /* forward declaration */


/* starting interface:    nsISound */
const char[] NS_ISOUND_IID_STR = "b148eed1-236d-11d3-b35c-00a0cc3c1cde";

const nsIID NS_ISOUND_IID= 
  {0xb148eed1, 0x236d, 0x11d3, 
    [ 0xb3, 0x5c, 0x00, 0xa0, 0xcc, 0x3c, 0x1c, 0xde ]};

extern(Windows)
interface nsISound : nsISupports {
  static const char[] IID_STR = NS_ISOUND_IID_STR;
  static const nsIID IID = NS_ISOUND_IID;

  /* void play (in nsIURL aURL); */
  nsresult Play(nsIURL aURL);

  /**
   * for playing system sounds
   */
  /* void playSystemSound (in string soundAlias); */
  nsresult PlaySystemSound(char *soundAlias);

  /* void beep (); */
  nsresult Beep();

  /**
    * Not strictly necessary, but avoids delay before first sound.
    * The various methods on nsISound call Init() if they need to.
	*/
  /* void init (); */
  nsresult Init();

}

