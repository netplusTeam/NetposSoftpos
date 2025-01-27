.class public interface abstract Lcom/mastercard/terminalsdk/listeners/VerificationMethodProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentCardholderVerification(Lcom/mastercard/terminalsdk/objects/CvmType;)Lcom/mastercard/terminalsdk/objects/CvmObject;
.end method

.method public abstract getUpdatedCardHolderVerification(Lcom/mastercard/terminalsdk/objects/CvmType;)Lcom/mastercard/terminalsdk/objects/CvmObject;
.end method

.method public abstract isPinEntryByPassed()Z
.end method

.method public abstract isPinPadMalfunctioning()Z
.end method

.method public abstract isSubsequentPinByPassed()Z
.end method
