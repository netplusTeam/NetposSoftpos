.class public interface abstract Lnet/sf/scuba/smartcards/APDUWrapper;
.super Ljava/lang/Object;
.source "APDUWrapper.java"


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract unwrap(Lnet/sf/scuba/smartcards/ResponseAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;
.end method

.method public abstract wrap(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/CommandAPDU;
.end method
