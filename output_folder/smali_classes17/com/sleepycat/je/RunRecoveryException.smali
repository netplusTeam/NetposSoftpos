.class public abstract Lcom/sleepycat/je/RunRecoveryException;
.super Lcom/sleepycat/je/DatabaseException;
.source "RunRecoveryException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72093dcdL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
