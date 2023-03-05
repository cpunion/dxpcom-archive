/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISound.idl
 */

module mozilla.dxpcom.nsISoundD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISound;


public import mozilla.dxpcom.nsISoundD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURL;

public import mozilla.dxpcom.nsIURLD;


/* starting wrapper class:    nsISound */
class nsISoundD : public nsISupportsD {

  static const nsIID IID = NS_ISOUND_IID;


  alias nsISound InnerType;

  this(nsISound intr){
    super(intr);
    this.inner = intr;
  }

  nsISound opCast() {
    return inner;
  }

  void opAssign(nsISound value) {
    inner = value;
  }

  /* void play (in nsIURL aURL); */
  void Play(nsIURLD aURL){
    nsresult __result = inner.Play(aURL ? cast(nsIURL)aURL : null);
    CheckException(__result);
  }

  /**
   * for playing system sounds
   */
  /* void playSystemSound (in string soundAlias); */
  void PlaySystemSound(char*soundAlias){
    nsresult __result = inner.PlaySystemSound(soundAlias);
    CheckException(__result);
  }

  /* void beep (); */
  void Beep(){
    nsresult __result = inner.Beep();
    CheckException(__result);
  }

  /**
    * Not strictly necessary, but avoids delay before first sound.
    * The various methods on nsISound call Init() if they need to.
	*/
  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

private:
  nsISound inner;

}

