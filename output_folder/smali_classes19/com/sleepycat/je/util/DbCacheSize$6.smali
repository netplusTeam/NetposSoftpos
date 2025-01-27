.class Lcom/sleepycat/je/util/DbCacheSize$6;
.super Ljava/lang/Thread;
.source "DbCacheSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/DbCacheSize;->preloadRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Database;Z)Lcom/sleepycat/je/PreloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/DbCacheSize;

.field final synthetic val$out:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbCacheSize;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/DbCacheSize;

    .line 2133
    iput-object p1, p0, Lcom/sleepycat/je/util/DbCacheSize$6;->this$0:Lcom/sleepycat/je/util/DbCacheSize;

    iput-object p2, p0, Lcom/sleepycat/je/util/DbCacheSize$6;->val$out:Ljava/io/PrintStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2138
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize$6;->val$out:Ljava/io/PrintStream;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2139
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize$6;->val$out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 2140
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    goto :goto_0

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/lang/InterruptedException;
    nop

    .line 2145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    return-void
.end method
