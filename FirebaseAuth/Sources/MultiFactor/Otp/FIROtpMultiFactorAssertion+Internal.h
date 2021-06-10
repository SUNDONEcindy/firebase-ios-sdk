/*
 * Copyright 2021 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <TargetConditionals.h>
#if TARGET_OS_IOS

#import "FirebaseAuth/Sources/Public/FirebaseAuth/FIROtpMultiFactorAssertion.h"

NS_ASSUME_NONNULL_BEGIN

@interface FIROtpMultiFactorAssertion ()

@property(nonatomic, nonnull) NSString *MFAEnrollmentID;

@property(nonatomic, nonnull) NSString *sessionInfo;

@property(nonatomic, nonnull) NSString *verificationCode;

@end

NS_ASSUME_NONNULL_END

#endif