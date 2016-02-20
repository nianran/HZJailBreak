
#import "CharacountForNotes9.h"

%hook ICNoteEditorViewController
- (void)viewWillAppear:(BOOL)arg1{
%orig;
NSString* content = [NSString stringWithFormat:@"%@",self.textView.text];
NSString* contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
self.title = contentLength;
}

- (void)viewWillDisapper:(BOOL)arg1{
%orig;
self.title = nil;
}

- (void)textViewDidChange:(id)arg1{
%orig;
NSString* content = [NSString stringWithFormat:@"%@",self.textView.text];
NSString* contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
self.title = contentLength;
}

%end