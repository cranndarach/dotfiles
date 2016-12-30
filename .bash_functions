# Contains user-defined functions.

mkdirc() {
    mkdir $(pwd)/$1
    cd $(pwd)/$1
}

mit() {
    year=`date +%y`
    text='MIT License (MIT)\n\
    Copyright (c) $year Rachael J. Steiner\n\n\
    Permission is hereby granted, free of charge, to any person obtaining a\
    copy of this software and associated documentation files (the "Software"),\
    to deal in the Software without restriction, including without limitation\
    the rights to use, copy, modify, merge, publish, distribute, sublicense,\
    and/or sell copies of the Software, and to permit persons to whom the \
    Software is furnished to do so, subject to the following conditions:\n\n\
    The above copyright notice and this permission notice shall be included in \
    all copies or substantial portions of the Software.\n\n\
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR \
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER\
    DEALINGS IN THE SOFTWARE.'
    
    cat $text > $(pwd)/LICENSE
}
