.class public interface abstract Lorg/jpos/transaction/AbortParticipant;
.super Ljava/lang/Object;
.source "AbortParticipant.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;


# virtual methods
.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 38
    invoke-interface {p0, p1, p2, p3}, Lorg/jpos/transaction/AbortParticipant;->prepare(JLjava/io/Serializable;)I

    move-result v0

    return v0
.end method
