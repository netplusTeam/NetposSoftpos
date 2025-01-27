.class Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "DbCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/DbCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbCacheLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcom/sleepycat/je/dbi/DatabaseId;",
        "Lcom/sleepycat/je/rep/impl/node/DbCache$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/node/DbCache;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/rep/impl/node/DbCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/node/DbCache;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/impl/node/DbCache$1;

    .line 206
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;-><init>(Lcom/sleepycat/je/rep/impl/node/DbCache;)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/rep/impl/node/DbCache$Info;",
            ">;)Z"
        }
    .end annotation

    .line 211
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/rep/impl/node/DbCache$Info;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/DbCache;->access$200(Lcom/sleepycat/je/rep/impl/node/DbCache;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->this$0:Lcom/sleepycat/je/rep/impl/node/DbCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/impl/node/DbCache;->access$300(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
