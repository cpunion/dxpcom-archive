/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorSpellCheck.idl
 */

module mozilla.dxpcom.nsIEditorSpellCheckD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorSpellCheck;


public import mozilla.dxpcom.nsIEditorSpellCheckD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;

public import mozilla.xpcom.nsITextServicesFilter;

public import mozilla.dxpcom.nsITextServicesFilterD;


/* starting wrapper class:    nsIEditorSpellCheck */
class nsIEditorSpellCheckD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORSPELLCHECK_IID;


  alias nsIEditorSpellCheck InnerType;

  this(nsIEditorSpellCheck intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorSpellCheck opCast() {
    return inner;
  }

  void opAssign(nsIEditorSpellCheck value) {
    inner = value;
  }

  /**
   * Turns on the spell checker for the given editor. enableSelectionChecking
   * set means that we only want to check the current selection in the editor,
   * (this controls the behavior of GetNextMisspelledWord). For inline
   * spellchecking, we don't care about this.
   */
  /* void InitSpellChecker (in nsIEditor editor, in boolean enableSelectionChecking); */
  void InitSpellChecker(nsIEditorD editor, PRBool enableSelectionChecking){
    nsresult __result = inner.InitSpellChecker(editor ? cast(nsIEditor)editor : null, enableSelectionChecking);
    CheckException(__result);
  }

  /**
   * When interactively spell checking the document, this will return the
   * value of the next word that is misspelled. This also computes the
   * suggestions which you can get by calling GetSuggestedWord.
   *
   * @see nsISpellChecker::GetNextMisspelledWord
   */
  /* wstring GetNextMisspelledWord (); */
  PRUnichar* GetNextMisspelledWord(){
    PRUnichar* _retval;
    nsresult __result = inner.GetNextMisspelledWord(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Used to get suggestions for the last word that was checked and found to
   * be misspelled. The first call will give you the first (best) suggestion.
   * Subsequent calls will iterate through all the suggestions, allowing you
   * to build a list. When there are no more suggestions, an empty string will
   * be returned.
   *
   * @see nsISpellChecker::GetSuggestedWord
   */
  /* wstring GetSuggestedWord (); */
  PRUnichar* GetSuggestedWord(){
    PRUnichar* _retval;
    nsresult __result = inner.GetSuggestedWord(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Check a given word. In spite of the name, this function checks the word
   * you give it, returning true if the word is misspelled. If the word is
   * misspelled, it will compute the suggestions which you can get from
   * GetSuggestedWord().
   *
   * @see nsISpellChecker::CheckCurrentWord
   */
  /* boolean CheckCurrentWord (in wstring suggestedWord); */
  PRBool CheckCurrentWord(PRUnichar*suggestedWord){
    PRBool _retval;
    nsresult __result = inner.CheckCurrentWord(suggestedWord, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Use when modaly checking the document to replace a word.
   *
   * @see nsISpellChecker::CheckCurrentWord
   */
  /* void ReplaceWord (in wstring misspelledWord, in wstring replaceWord, in boolean allOccurrences); */
  void ReplaceWord(PRUnichar*misspelledWord, PRUnichar*replaceWord, PRBool allOccurrences){
    nsresult __result = inner.ReplaceWord(misspelledWord, replaceWord, allOccurrences);
    CheckException(__result);
  }

  /**
   * @see nsISpellChecker::IgnoreAll
   */
  /* void IgnoreWordAllOccurrences (in wstring word); */
  void IgnoreWordAllOccurrences(PRUnichar*word){
    nsresult __result = inner.IgnoreWordAllOccurrences(word);
    CheckException(__result);
  }

  /**
   * Fills an internal list of words added to the personal dictionary. These
   * words can be retrieved using GetPersonalDictionaryWord()
   *
   * @see nsISpellChecker::GetPersonalDictionary
   * @see GetPersonalDictionaryWord
   */
  /* void GetPersonalDictionary (); */
  void GetPersonalDictionary(){
    nsresult __result = inner.GetPersonalDictionary();
    CheckException(__result);
  }

  /**
   * Used after you call GetPersonalDictionary() to iterate through all the
   * words added to the personal dictionary. Will return the empty string when
   * there are no more words.
   */
  /* wstring GetPersonalDictionaryWord (); */
  PRUnichar* GetPersonalDictionaryWord(){
    PRUnichar* _retval;
    nsresult __result = inner.GetPersonalDictionaryWord(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Adds a word to the current personal dictionary.
   *
   * @see nsISpellChecker::AddWordToDictionary
   */
  /* void AddWordToDictionary (in wstring word); */
  void AddWordToDictionary(PRUnichar*word){
    nsresult __result = inner.AddWordToDictionary(word);
    CheckException(__result);
  }

  /**
   * Removes a word from the current personal dictionary.
   *
   * @see nsISpellChecker::RemoveWordFromPersonalDictionary
   */
  /* void RemoveWordFromDictionary (in wstring word); */
  void RemoveWordFromDictionary(PRUnichar*word){
    nsresult __result = inner.RemoveWordFromDictionary(word);
    CheckException(__result);
  }

  /**
   * Retrieves a list of the currently available dictionaries. The strings will
   * typically be language IDs, like "en-US".
   *
   * @see mozISpellCheckingEngine::GetDictionaryList
   */
  /* void GetDictionaryList ([array, size_is (count)] out wstring dictionaryList, out PRUint32 count); */
  void GetDictionaryList(out PRUnichar**dictionaryList, out PRUint32 count){
    nsresult __result = inner.GetDictionaryList(&dictionaryList, &count);
    CheckException(__result);
  }

  /**
   * @see nsISpellChecker::GetCurrentDictionary
   */
  /* wstring GetCurrentDictionary (); */
  PRUnichar* GetCurrentDictionary(){
    PRUnichar* _retval;
    nsresult __result = inner.GetCurrentDictionary(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * @see nsISpellChecker::SetCurrentDictionary
   */
  /* void SetCurrentDictionary (in wstring dictionary); */
  void SetCurrentDictionary(PRUnichar*dictionary){
    nsresult __result = inner.SetCurrentDictionary(dictionary);
    CheckException(__result);
  }

  /**
   * Call this to free up the spell checking object. It will also save the
   * current selected language as the default for future use.
   *
   * If you have called CanSpellCheck but not InitSpellChecker, you can still
   * call this function to clear the cached spell check object, and no
   * preference saving will happen.
   */
  /* void UninitSpellChecker (); */
  void UninitSpellChecker(){
    nsresult __result = inner.UninitSpellChecker();
    CheckException(__result);
  }

  /**
   * Used to filter the content (for example, to skip blockquotes in email from
   * spellchecking. Call this before calling InitSpellChecker; calling it
   * after initialization will have no effect.
   *
   * @see nsITextServicesDocument::setFilter
   */
  /* void setFilter (in nsITextServicesFilter filter); */
  void SetFilter(nsITextServicesFilterD filter){
    nsresult __result = inner.SetFilter(filter ? cast(nsITextServicesFilter)filter : null);
    CheckException(__result);
  }

  /**
   * Like CheckCurrentWord, checks the word you give it, returning true if it's
   * misspelled. This is faster than CheckCurrentWord because it does not
   * compute any suggestions.
   *
   * Watch out: this does not clear any suggestions left over from previous
   * calls to CheckCurrentWord, so there may be suggestions, but they will be
   * invalid.
   */
  /* boolean CheckCurrentWordNoSuggest (in wstring suggestedWord); */
  PRBool CheckCurrentWordNoSuggest(PRUnichar*suggestedWord){
    PRBool _retval;
    nsresult __result = inner.CheckCurrentWordNoSuggest(suggestedWord, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIEditorSpellCheck inner;

}


/* starting wrapper class:    nsIEditorSpellCheck_MOZILLA_1_8_BRANCH */
/**
 * This contains enhancements made to this interface on the trunk. Here, it is
 * on a separate interface to avoid changing interfaces on the branch.
 */
class nsIEditorSpellCheck_MOZILLA_1_8_BRANCHD : public nsIEditorSpellCheckD {

  static const nsIID IID = NS_IEDITORSPELLCHECK_MOZILLA_1_8_BRANCH_IID;


  alias nsIEditorSpellCheck_MOZILLA_1_8_BRANCH InnerType;

  this(nsIEditorSpellCheck_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorSpellCheck_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIEditorSpellCheck_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * Returns true if we can enable spellchecking. If there are no available
   * dictionaries, this will return false.
   */
  /* boolean CanSpellCheck (); */
  PRBool CanSpellCheck(){
    PRBool _retval;
    nsresult __result = inner.CanSpellCheck(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Call to save the currently selected dictionary as the default. The
   * function UninitSpellChecker will also do this, but that function may
   * not be called in some situations. This function allows the caller to force
   * the default right now.
   */
  /* void saveDefaultDictionary (); */
  void SaveDefaultDictionary(){
    nsresult __result = inner.SaveDefaultDictionary();
    CheckException(__result);
  }

private:
  nsIEditorSpellCheck_MOZILLA_1_8_BRANCH inner;

}

