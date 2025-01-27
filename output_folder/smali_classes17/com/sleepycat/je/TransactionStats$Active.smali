.class public Lcom/sleepycat/je/TransactionStats$Active;
.super Ljava/lang/Object;
.source "TransactionStats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/TransactionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Active"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cb162d5L


# instance fields
.field private name:Ljava/lang/String;

.field private parentId:J

.field private txnId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "txnId"    # J
    .param p4, "parentId"    # J

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sleepycat/je/TransactionStats$Active;->name:Ljava/lang/String;

    .line 95
    iput-wide p2, p0, Lcom/sleepycat/je/TransactionStats$Active;->txnId:J

    .line 96
    iput-wide p4, p0, Lcom/sleepycat/je/TransactionStats$Active;->parentId:J

    .line 97
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/sleepycat/je/TransactionStats$Active;->txnId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats$Active;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/je/TransactionStats$Active;->parentId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txnId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/TransactionStats$Active;->txnId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txnName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/TransactionStats$Active;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
