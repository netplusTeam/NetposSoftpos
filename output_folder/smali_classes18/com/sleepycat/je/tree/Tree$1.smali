.class Lcom/sleepycat/je/tree/Tree$1;
.super Ljava/lang/Object;
.source "Tree.java"

# interfaces
.implements Lcom/sleepycat/je/latch/LatchContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/tree/Tree;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/tree/Tree;

.field final synthetic val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/tree/Tree;

    .line 299
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree$1;->this$0:Lcom/sleepycat/je/tree/Tree;

    iput-object p2, p0, Lcom/sleepycat/je/tree/Tree$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method public getLatchName()Ljava/lang/String;
    .locals 1

    .line 306
    const-string v0, "RootLatch"

    return-object v0
.end method

.method public getLatchTable()Lcom/sleepycat/je/latch/LatchTable;
    .locals 1

    .line 310
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    return-object v0
.end method

.method public getLatchTimeoutMs()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$1;->val$envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLatchTimeoutMs()I

    move-result v0

    return v0
.end method
