class NameVaild {
String? myVaild  (String? value) {
                    if ((value?.length ?? 0) >= 3 ) {
                      return null;
                    }
                    return 'InVaild';
                  }
}