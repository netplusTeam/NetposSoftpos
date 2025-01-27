.class public interface abstract Lcom/visa/vac/tc/VACThinClient$TransactionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/VACThinClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionCallback"
.end annotation


# virtual methods
.method public abstract onCVM(ILcom/visa/vac/tc/emvconverter/Transaction;)V
.end method

.method public abstract onComplete(ILcom/visa/vac/tc/emvconverter/Transaction;)V
.end method

.method public abstract onFailure(ILcom/visa/vac/tc/emvconverter/Transaction;)V
.end method

.method public abstract onProgress(ILcom/visa/vac/tc/emvconverter/Transaction;)V
.end method
