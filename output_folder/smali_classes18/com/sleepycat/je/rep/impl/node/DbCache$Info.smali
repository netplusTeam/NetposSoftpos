.class Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
.super Ljava/lang/Object;
.source "DbCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/DbCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field lastAccess:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 195
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/DbCache;->access$100(Lcom/sleepycat/je/rep/impl/node/DbCache;)I

    move-result p1

    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->lastAccess:I

    .line 198
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 199
    return-void
.end method
