.class Lcom/sleepycat/je/tree/Tree$RootChildReference;
.super Lcom/sleepycat/je/tree/ChildReference;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootChildReference"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    const-class v0, Lcom/sleepycat/je/tree/Tree;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/tree/Tree;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    .line 198
    invoke-direct {p0}, Lcom/sleepycat/je/tree/ChildReference;-><init>()V

    .line 199
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Node;[BJ)V
    .locals 0
    .param p2, "target"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "key"    # [B
    .param p4, "lsn"    # J

    .line 201
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    .line 202
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/tree/ChildReference;-><init>(Lcom/sleepycat/je/tree/Node;[BJ)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Node;[BJLcom/sleepycat/je/tree/Tree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/tree/Tree;
    .param p2, "x1"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "x2"    # [B
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/sleepycat/je/tree/Tree$1;

    .line 195
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/tree/Tree$RootChildReference;-><init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Node;[BJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/tree/Tree;Lcom/sleepycat/je/tree/Tree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/tree/Tree;
    .param p2, "x1"    # Lcom/sleepycat/je/tree/Tree$1;

    .line 195
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/Tree$RootChildReference;-><init>(Lcom/sleepycat/je/tree/Tree;)V

    return-void
.end method


# virtual methods
.method public clearTarget()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-super {p0}, Lcom/sleepycat/je/tree/ChildReference;->clearTarget()V

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;
    .locals 3
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "in"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/Tree$RootChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$100(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/tree/ChildReference;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 221
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root changed while unlatched, dbId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 227
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    return-object v0
.end method

.method setDirty()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/sleepycat/je/tree/ChildReference;->setDirty()V

    .line 257
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$200(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V

    .line 258
    return-void
.end method

.method public setLsn(J)V
    .locals 1
    .param p1, "lsn"    # J

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/ChildReference;->setLsn(J)V

    .line 246
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setTarget(Lcom/sleepycat/je/tree/Node;)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;

    .line 232
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lcom/sleepycat/je/tree/ChildReference;->setTarget(Lcom/sleepycat/je/tree/Node;)V

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "lsn"    # J

    .line 250
    iget-object v0, p0, Lcom/sleepycat/je/tree/Tree$RootChildReference;->this$0:Lcom/sleepycat/je/tree/Tree;

    invoke-static {v0}, Lcom/sleepycat/je/tree/Tree;->access$000(Lcom/sleepycat/je/tree/Tree;)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->isExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/ChildReference;->updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 252
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
