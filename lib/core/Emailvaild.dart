class EmailVaild {
String? myVaild  (String? value) {
                    if ((value?.length ?? 0) > 4 ) {
                      return null;
                    }
                    return 'invaild';
                  }
}