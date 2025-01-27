.class final Lcom/sleepycat/je/latch/LatchSupport$1;
.super Ljava/lang/Object;
.source "LatchSupport.java"

# interfaces
.implements Lcom/sleepycat/je/latch/LatchContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/latch/LatchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatchName()Ljava/lang/String;
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
    .locals 1

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatchTimeoutMs()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method
