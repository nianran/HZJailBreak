%hook CMessageMgr

- (void)onRevokeMsg:(id)arg1{
}
- (void)onRevokeMsgCgiReturn:(id)arg1{
}

%end


%hook QPUserDataModel

- (BOOL)isVip{
return true;
}

%end