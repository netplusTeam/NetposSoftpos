.class Lcom/sleepycat/je/util/DbCacheSize$5;
.super Ljava/lang/Object;
.source "DbCacheSize.java"

# interfaces
.implements Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/DbCacheSize;->evictMainToDataSize(Lcom/sleepycat/je/Database;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/DbCacheSize;

.field final synthetic val$dataSize:J

.field final synthetic val$db:Lcom/sleepycat/je/Database;

.field final synthetic val$evictor:Lcom/sleepycat/je/evictor/Evictor;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbCacheSize;Lcom/sleepycat/je/evictor/Evictor;Lcom/sleepycat/je/Database;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/DbCacheSize;

    .line 2056
    iput-object p1, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->this$0:Lcom/sleepycat/je/util/DbCacheSize;

    iput-object p2, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$evictor:Lcom/sleepycat/je/evictor/Evictor;

    iput-object p3, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$db:Lcom/sleepycat/je/Database;

    iput-wide p4, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$dataSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBIN(Lcom/sleepycat/je/tree/BIN;)Z
    .locals 4
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 2059
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$evictor:Lcom/sleepycat/je/evictor/Evictor;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/evictor/Evictor;->doTestEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    .line 2060
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->this$0:Lcom/sleepycat/je/util/DbCacheSize;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$db:Lcom/sleepycat/je/Database;

    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->access$000(Lcom/sleepycat/je/util/DbCacheSize;Lcom/sleepycat/je/Environment;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize$5;->val$dataSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
