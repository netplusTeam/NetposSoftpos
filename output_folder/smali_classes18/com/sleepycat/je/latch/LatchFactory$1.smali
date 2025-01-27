.class final Lcom/sleepycat/je/latch/LatchFactory$1;
.super Ljava/lang/Object;
.source "LatchFactory.java"

# interfaces
.implements Lcom/sleepycat/je/latch/LatchContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/latch/LatchFactory;->createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sleepycat/je/latch/LatchFactory$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iput-object p2, p0, Lcom/sleepycat/je/latch/LatchFactory$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchFactory$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getLatchName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchFactory$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
    .locals 1

    .line 95
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->otherLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    return-object v0
.end method

.method public getLatchTimeoutMs()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/latch/LatchFactory$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLatchTimeoutMs()I

    move-result v0

    return v0
.end method
