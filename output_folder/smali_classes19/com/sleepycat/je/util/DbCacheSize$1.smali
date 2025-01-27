.class Lcom/sleepycat/je/util/DbCacheSize$1;
.super Ljava/lang/Object;
.source "DbCacheSize.java"

# interfaces
.implements Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/DbCacheSize;->insertRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/DbCacheSize;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbCacheSize;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/DbCacheSize;

    .line 1956
    iput-object p1, p0, Lcom/sleepycat/je/util/DbCacheSize$1;->this$0:Lcom/sleepycat/je/util/DbCacheSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBIN(Lcom/sleepycat/je/tree/BIN;)Z
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 1959
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->updateMemoryBudget()V

    .line 1960
    const/4 v0, 0x1

    return v0
.end method
