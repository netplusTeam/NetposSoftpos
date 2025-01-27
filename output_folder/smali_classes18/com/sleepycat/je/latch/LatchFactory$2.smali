.class final Lcom/sleepycat/je/latch/LatchFactory$2;
.super Ljava/lang/Object;
.source "LatchFactory.java"

# interfaces
.implements Lcom/sleepycat/je/latch/LatchContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/latch/LatchFactory;->createTestLatchContext(Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sleepycat/je/latch/LatchFactory$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 123
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getLatchName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchFactory$2;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
    .locals 1

    .line 119
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->otherLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    return-object v0
.end method

.method public getLatchTimeoutMs()I
    .locals 1

    .line 111
    const/16 v0, 0x3e8

    return v0
.end method
