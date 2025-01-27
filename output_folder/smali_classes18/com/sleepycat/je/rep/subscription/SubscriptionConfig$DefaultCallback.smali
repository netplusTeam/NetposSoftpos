.class Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultCallback;
.super Ljava/lang/Object;
.source "SubscriptionConfig.java"

# interfaces
.implements Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultCallback;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    return-void
.end method


# virtual methods
.method public processAbort(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "txnid"    # J

    .line 755
    return-void
.end method

.method public processCommit(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "txnid"    # J

    .line 750
    return-void
.end method

.method public processDel(Lcom/sleepycat/je/utilint/VLSN;[BJLcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "key"    # [B
    .param p3, "txnId"    # J
    .param p5, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 745
    return-void
.end method

.method public processException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 760
    return-void
.end method

.method public processPut(Lcom/sleepycat/je/utilint/VLSN;[B[BJLcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "key"    # [B
    .param p3, "value"    # [B
    .param p4, "txnId"    # J
    .param p6, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 739
    return-void
.end method
