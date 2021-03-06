
/*	
 *	
 *  ChatStyling.m	
 *  ZDCChat	
 *	
 *  Created by Zendesk on 03/12/2014.	
 *	
 *  Copyright (c) 2016 Zendesk. All rights reserved.	
 *	
 *  By downloading or using the Zendesk Mobile SDK, You agree to the Zendesk Master	
 *  Subscription Agreement https://www.zendesk.com/company/customers-partners/#master-subscription-agreement and Application Developer and API License	
 *  Agreement https://www.zendesk.com/company/customers-partners/#application-developer-api-license-agreement and	
 *  acknowledge that such terms govern Your use of and access to the Mobile SDK.	
 *	
 */	


 #import "ChatStyling.h"	


 @implementation ChatStyling	


 + (void) applyStyling	
{	
    UIEdgeInsets insets;	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Setting Default avatar	
    ////////////////////////////////////////////////////////////////////////////////////////////////	
    [[ZDCChatAvatar appearance] setDefaultAvatarImage:[UIImage imageNamed:@"ChatAgent"]];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Configuring the chat widget/overlay	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     [[ZDCChat instance].overlay setEnabled:YES];	
    [[ZDCChatOverlay appearance] setAlignment:@(ZDCOverlayAlignmentBottomLeft)];	
    [[ZDCChatOverlay appearance] setMessageCountColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCChatOverlay appearance] setTypingIndicatorColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:0.5f]];	
    [[ZDCChatOverlay appearance] setTypingIndicatorHighlightColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCChatOverlay appearance] setTypingIndicatorDiameter:@(4.0f)];	
    [[ZDCChatOverlay appearance] setMessageCountFont:[UIFont systemFontOfSize:15.0f]];	
    [[ZDCChatOverlay appearance] setInsets:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(10.0f, 15.0f, 15.0f, 15.0f)]];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat loading screen	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     [[ZDCLoadingView appearance] setLoadingLabelFont:[UIFont boldSystemFontOfSize:12.0f]];	
    [[ZDCLoadingView appearance] setLoadingLabelTextColor:[UIColor colorWithWhite:0.2f alpha:1.0f]];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style loading errors/notifications	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     [[ZDCLoadingErrorView appearance] setIconImage:nil]; // provide an image name to override default image	

     [[ZDCLoadingErrorView appearance] setTitleFont:[UIFont boldSystemFontOfSize:17.0f]];	
    [[ZDCLoadingErrorView appearance] setTitleColor:[UIColor colorWithWhite:0.2f alpha:1.0f]];	
    [[ZDCLoadingErrorView appearance] setMessageFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCLoadingErrorView appearance] setMessageColor:[UIColor colorWithWhite:0.2f alpha:1.0f]];	
    [[ZDCLoadingErrorView appearance] setButtonFont:[UIFont boldSystemFontOfSize:17.0f]];	
    [[ZDCLoadingErrorView appearance] setButtonTitleColor:[UIColor whiteColor]];	
    [[ZDCLoadingErrorView appearance] setButtonBackgroundColor:[UIColor colorWithRed:0.87 green:0.11 blue:0.13 alpha:1.0]];	
    [[ZDCLoadingErrorView appearance] setButtonImage:nil]; // provide an image name to override default image	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the pre-chat form	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     insets = UIEdgeInsetsMake(10.0f, 15.0f, 0.0f, 15.0f);	
    [[ZDCFormCellSingleLine appearance] setTextFrameInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    insets = UIEdgeInsetsMake(15.0f, 15.0f, 15.0f, 15.0f);	
    [[ZDCFormCellSingleLine appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCFormCellSingleLine appearance] setTextFrameBorderColor:[UIColor colorWithRed:0.80 green:0.85 blue:0.91 alpha:1.0]];	
    [[ZDCFormCellSingleLine appearance] setTextFrameBackgroundColor:[UIColor colorWithRed:0.94 green:0.98 blue:1.00 alpha:1.0]];	
    [[ZDCFormCellSingleLine appearance] setTextFrameCornerRadius:@(8.0f)];	
    [[ZDCFormCellSingleLine appearance] setTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCFormCellSingleLine appearance] setTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	

     insets = UIEdgeInsetsMake(10.0f, 15.0f, 0.0f, 15.0f);	
    [[ZDCFormCellDepartment appearance] setTextFrameInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    insets = UIEdgeInsetsMake(15.0f, 15.0f, 15.0f, 15.0f);	
    [[ZDCFormCellDepartment appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCFormCellDepartment appearance] setTextFrameBorderColor:[UIColor colorWithRed:0.80 green:0.85 blue:0.91 alpha:1.0]];	
    [[ZDCFormCellDepartment appearance] setTextFrameBackgroundColor:[UIColor colorWithRed:0.94 green:0.98 blue:1.00 alpha:1.0]];	
    [[ZDCFormCellDepartment appearance] setTextFrameCornerRadius:@(8.0f)];	
    [[ZDCFormCellDepartment appearance] setTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCFormCellDepartment appearance] setTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	

     insets = UIEdgeInsetsMake(10.0f, 15.0f, 10.0f, 15.0f);	
    [[ZDCFormCellMessage appearance] setTextFrameInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    insets = UIEdgeInsetsMake(15.0f, 10.0f, 15.0f, 10.0f);	
    [[ZDCFormCellMessage appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCFormCellMessage appearance] setTextFrameBorderColor:[UIColor colorWithRed:0.80 green:0.85 blue:0.91 alpha:1.0]];	
    [[ZDCFormCellMessage appearance] setTextFrameBackgroundColor:[UIColor colorWithRed:0.94 green:0.98 blue:1.00 alpha:1.0]];	
    [[ZDCFormCellMessage appearance] setTextFrameCornerRadius:@(8.0f)];	
    [[ZDCFormCellMessage appearance] setTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCFormCellMessage appearance] setTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat cells	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     insets = UIEdgeInsetsMake(10.0f, 70.0f , 10.0f, 20.0f);	
    [[ZDCJoinLeaveCell appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCJoinLeaveCell appearance] setTextColor:[UIColor colorWithWhite:0.26f alpha:1.0f]];	
    [[ZDCJoinLeaveCell appearance] setTextFont:[UIFont boldSystemFontOfSize:14]];	

     insets = UIEdgeInsetsMake(8.0f, 75.0f , 7.0f, 15.0f);	
    [[ZDCVisitorChatCell appearance] setBubbleInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    insets = UIEdgeInsetsMake(15.0f, 15.0f, 15.0f, 15.0f);	
    [[ZDCVisitorChatCell appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCVisitorChatCell appearance] setBubbleBorderColor:[UIColor colorWithRed:0.20 green:0.39 blue:0.63 alpha:1.0]];	
    [[ZDCVisitorChatCell appearance] setBubbleColor:[UIColor clearColor]];	
    [[ZDCVisitorChatCell appearance] setBubbleCornerRadius:@(8.0f)];	
    [[ZDCVisitorChatCell appearance] setTextAlignment:@(NSTextAlignmentLeft)];	
    [[ZDCVisitorChatCell appearance] setTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCVisitorChatCell appearance] setTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCVisitorChatCell appearance] setUnsentTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCVisitorChatCell appearance] setUnsentTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCVisitorChatCell appearance] setUnsentMessageTopMargin:@(20.0f)];	
    [[ZDCVisitorChatCell appearance] setUnsentIconLeftMargin:@(10.0f)];	

     insets = UIEdgeInsetsMake(8.0f, 55.0f, 7.0f, 30.0f);	
    [[ZDCAgentChatCell appearance] setBubbleInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    insets = UIEdgeInsetsMake(15.0f, 15.0f, 15.0f, 15.0f);	
    [[ZDCAgentChatCell appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCAgentChatCell appearance] setBubbleBorderColor:[UIColor colorWithRed:0.80 green:0.85 blue:0.91 alpha:1.0]];	
    [[ZDCAgentChatCell appearance] setBubbleColor:[UIColor colorWithRed:0.94 green:0.98 blue:1.00 alpha:1.0]];	
    [[ZDCAgentChatCell appearance] setBubbleCornerRadius:@(8.0f)];	
    [[ZDCAgentChatCell appearance] setTextAlignment:@(NSTextAlignmentLeft)];	
    [[ZDCAgentChatCell appearance] setTextColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCAgentChatCell appearance] setTextFont:[UIFont systemFontOfSize:17.0f]];	
    [[ZDCAgentChatCell appearance] setAvatarHeight:@(30.0f)];	
    [[ZDCAgentChatCell appearance] setAvatarLeftInset:@(20.0f)];	
    [[ZDCAgentChatCell appearance] setAuthorColor:[UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0]];	
    [[ZDCAgentChatCell appearance] setAuthorFont:[UIFont systemFontOfSize:17]];	
    [[ZDCAgentChatCell appearance] setAuthorHeight:@(25.0f)];	

     insets = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);	
    [[ZDCSystemTriggerCell appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCSystemTriggerCell appearance] setTextColor:[UIColor colorWithWhite:0.26f alpha:1.0f]];	
    [[ZDCSystemTriggerCell appearance] setTextFont:[UIFont boldSystemFontOfSize:14.0f]];	

     insets = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);	
    [[ZDCChatTimedOutCell appearance] setTextInsets:[NSValue valueWithUIEdgeInsets:insets]];	
    [[ZDCChatTimedOutCell appearance] setTextColor:[UIColor colorWithWhite:0.26f alpha:1.0f]];	
    [[ZDCChatTimedOutCell appearance] setTextFont:[UIFont boldSystemFontOfSize:14.0f]];	

     [[ZDCRatingCell appearance] setTitleColor:[UIColor colorWithWhite:0.26f alpha:1.0f]];	
    [[ZDCRatingCell appearance] setTitleFont:[UIFont boldSystemFontOfSize:14]];	
    [[ZDCRatingCell appearance] setCellToTitleMargin:@(20.0f)];	
    [[ZDCRatingCell appearance] setTitleToButtonsMargin:@(10.0f)];	
    [[ZDCRatingCell appearance] setRatingButtonToCommentMargin:@(20.0f)];	
    [[ZDCRatingCell appearance] setEditCommentButtonHeight:@(44.0f)];	
    [[ZDCRatingCell appearance] setRatingButtonSize:@(40.0f)];	

     [[ZDCAgentAttachmentCell appearance] setActivityIndicatorViewStyle:@(UIActivityIndicatorViewStyleGray)];	

     [[ZDCVisitorAttachmentCell appearance] setActivityIndicatorViewStyle:@(UIActivityIndicatorViewStyleGray)];	


     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat text entry area	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     [[ZDCTextEntryView appearance] setSendButtonImage:@"ChatSendButton"];	
    [[ZDCTextEntryView appearance] setTopBorderColor:[UIColor clearColor]];	
    [[ZDCTextEntryView appearance] setTextEntryFont:[UIFont systemFontOfSize:14.0f]];	
    [[ZDCTextEntryView appearance] setTextEntryColor:[UIColor colorWithWhite:0.4f alpha:1.0f]];	
    [[ZDCTextEntryView appearance] setTextEntryBackgroundColor:[UIColor colorWithWhite:0.945f alpha:1.0f]];	
    [[ZDCTextEntryView appearance] setTextEntryBorderColor:[UIColor colorWithWhite:0.831f alpha:1.0f]];	
    [[ZDCTextEntryView appearance] setAreaBackgroundColor:[UIColor whiteColor]];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat UI background colors	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // set all view backgrounds transparent	
    [[ZDCPreChatFormView appearance] setFormBackgroundColor:[UIColor clearColor]];	
    [[ZDCOfflineMessageView appearance] setFormBackgroundColor:[UIColor clearColor]];	
    [[ZDCChatView appearance] setChatBackgroundColor:[UIColor clearColor]];	
    [[ZDCLoadingView appearance] setLoadingBackgroundColor:[UIColor clearColor]];	
    [[ZDCLoadingErrorView appearance] setErrorBackgroundColor:[UIColor clearColor]];	

     // Set the base view background color	
    [[ZDCChatUI appearance] setChatBackgroundColor:[UIColor colorWithRed:0.91 green:0.83 blue:0.75 alpha:1.0]];	
    // [[ZDCChatUI appearance] setBackChatButtonImage:@"SampleBackground"];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Custom chat background (static image)	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // set the base view background image name and anchor	
    [[ZDCChatUI appearance] setChatBackgroundImage:@"bg"];	
    [[ZDCChatUI appearance] setChatBackgroundAnchor:@(ZDCChatBackgroundAnchorTop)];	

     //Customise the chat overlay icon	
    //[[ZDCChatOverlay appearance] setOverlayTintColor:[UIColor redColor]];	
    UIImage *overlayImage = [UIImage imageNamed:@"ChatButton"];	
    [[ZDCChatOverlay appearance] setOverlayBackgroundImage:overlayImage];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // UI notifications	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chatLoaded:) name:ZDC_CHAT_UI_DID_LOAD object:nil];	
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chatLayout:) name:ZDC_CHAT_UI_DID_LAYOUT object:nil];	
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chatUnloaded:) name:ZDC_CHAT_UI_WILL_UNLOAD object:nil];	
}	


 + (void) chatLoaded:(NSNotification*)notification	
{	
    ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Set a custom chat background (runtime image)	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // Those attributes controllable by UIAppearance should still be controlled via the standard appearance	
    // invocations. For a chat-wide background image to work you will need to also uncomment the background	
    // color apperance settings above	

     //ZDCChatUI *chatUI = notification.object;	

     //chatUI.chatBackgroundAnchor = @(ZDCChatBackgroundAnchorTop);	
    //chatUI.backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SampleBackground"]];	
}	


 + (void) chatLayout:(NSNotification*)notification	
{	
    ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Customise the layout of any part of the chat UI here, this notification is received after	
    // the standard/appearance configured layout has been applied	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     //ZDCChatUI *chatUI = notification.object;	
    //chatUI.loadingView...	
    //chatUI.formView...	
    //chatUI.chatView...	
}	


 + (void) chatUnloaded:(NSNotification*)notification	
{	
    // The Chat UI has been dismissed	
}	

 + (UIColor *)darkerColorForColor:(UIColor *)color by:(float)diff	
{	
  CGFloat r, g, b, a;	
  if ([color getRed:&r green:&g blue:&b alpha:&a])	
    return [UIColor colorWithRed:MAX(r - diff, 0.0)	
                           green:MAX(g - diff, 0.0)	
                            blue:MAX(b - diff, 0.0)	
                           alpha:a];	
  return nil;	
}	

 + (UIColor*) navBarTintColor	
{	
  return [UINavigationBar appearance].barTintColor;	
}	

 + (UIColor*) navTintColor	
{	
  return [UINavigationBar appearance].tintColor;	
}	

 + (BOOL) isVersionOrNewer:(NSString*)majorVersionNumber	
{	
  return [[[UIDevice currentDevice] systemVersion] compare:majorVersionNumber options:NSNumericSearch] != NSOrderedAscending;	
}	

 @end
