#import <substrate.h>

// Don't have much time and don't intend to make stuffs better.

NSString *kUnknown = @"User";

%hook IGUser

- (id)username
{
  return kUnknown;
}

- (void)setUsername:(id)arg1
{
  %orig(kUnknown);
}

- (id)displayName
{
  return kUnknown;
}

- (void)setDisplayName:(id)arg1
{
  %orig(kUnknown);
}

- (id)fullName
{
  return kUnknown;
}

- (void)setFullName:(id)arg1
{
  %orig(kUnknown);
}

- (id)secondaryName
{
  return kUnknown;
}

- (void)setSecondaryName:(id)arg1
{
  %orig(kUnknown);
}

%end

%hook IGProfilePictureImageView

- (void)setImage:(id)arg1
{
  %orig(NULL);
}

%end

%hook IGPost

- (id)mediaCoord
{
  return NULL;
}

- (void)setMediaCoord:(id)arg1
{
  %orig(NULL);
}

%end
