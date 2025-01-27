.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndex$WaitTimeOutException;
.super Ljava/lang/Exception;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitTimeOutException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2544
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 2548
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
