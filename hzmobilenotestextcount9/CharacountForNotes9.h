//
//  CharacountForNotes9.h
//  HZCharacountForNotes9
//
//  Created by 红纸 on 16/2/20.
//
//


#import <UIKit/UIKit.h>

@interface ICTextView : UITextView

@property (nonatomic, copy) NSString* text;

@end

@interface ICNoteEditorViewController : UIViewController

@property (nonatomic, strong) ICTextView* textView;

@end