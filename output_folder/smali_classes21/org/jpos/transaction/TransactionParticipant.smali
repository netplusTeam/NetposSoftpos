.class public interface abstract Lorg/jpos/transaction/TransactionParticipant;
.super Ljava/lang/Object;
.source "TransactionParticipant.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionConstants;


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 55
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 45
    return-void
.end method

.method public abstract prepare(JLjava/io/Serializable;)I
.end method
