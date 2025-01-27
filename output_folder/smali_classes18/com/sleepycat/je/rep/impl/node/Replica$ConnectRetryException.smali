.class Lcom/sleepycat/je/rep/impl/node/Replica$ConnectRetryException;
.super Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectRetryException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "retries"    # I
    .param p3, "retrySleepMs"    # I

    .line 1673
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/node/Replica$RetryException;-><init>(Ljava/lang/String;II)V

    .line 1674
    return-void
.end method
