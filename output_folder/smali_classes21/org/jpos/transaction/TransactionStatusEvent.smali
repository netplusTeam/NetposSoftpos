.class public Lorg/jpos/transaction/TransactionStatusEvent;
.super Ljava/lang/Object;
.source "TransactionStatusEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/TransactionStatusEvent$State;
    }
.end annotation


# instance fields
.field context:Ljava/io/Serializable;

.field id:J

.field info:Ljava/lang/String;

.field session:I

.field state:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field timestamp:J


# direct methods
.method public constructor <init>(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "session"    # I
    .param p2, "state"    # Lorg/jpos/transaction/TransactionStatusEvent$State;
    .param p3, "id"    # J
    .param p5, "info"    # Ljava/lang/String;
    .param p6, "context"    # Ljava/io/Serializable;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/jpos/transaction/TransactionStatusEvent;->session:I

    .line 58
    iput-object p2, p0, Lorg/jpos/transaction/TransactionStatusEvent;->state:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 59
    iput-wide p3, p0, Lorg/jpos/transaction/TransactionStatusEvent;->id:J

    .line 60
    iput-object p5, p0, Lorg/jpos/transaction/TransactionStatusEvent;->info:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lorg/jpos/transaction/TransactionStatusEvent;->context:Ljava/io/Serializable;

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->timestamp:J

    .line 63
    return-void
.end method


# virtual methods
.method public getContext()Ljava/io/Serializable;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->context:Ljava/io/Serializable;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->id:J

    return-wide v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->session:I

    return v0
.end method

.method public getState()Lorg/jpos/transaction/TransactionStatusEvent$State;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->state:Lorg/jpos/transaction/TransactionStatusEvent$State;

    return-object v0
.end method

.method public getStateAsString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jpos/transaction/TransactionStatusEvent;->state:Lorg/jpos/transaction/TransactionStatusEvent$State;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionStatusEvent$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/jpos/transaction/TransactionStatusEvent;->session:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/jpos/transaction/TransactionStatusEvent;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/TransactionStatusEvent;->state:Lorg/jpos/transaction/TransactionStatusEvent$State;

    invoke-virtual {v1}, Lorg/jpos/transaction/TransactionStatusEvent$State;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/TransactionStatusEvent;->info:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%02d %08d %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
