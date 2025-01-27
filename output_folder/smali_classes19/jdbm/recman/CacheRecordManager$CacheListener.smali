.class Ljdbm/recman/CacheRecordManager$CacheListener;
.super Ljava/lang/Object;
.source "CacheRecordManager.java"

# interfaces
.implements Ljdbm/helper/CachePolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/recman/CacheRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheListener"
.end annotation


# instance fields
.field private final synthetic this$0:Ljdbm/recman/CacheRecordManager;


# direct methods
.method private constructor <init>(Ljdbm/recman/CacheRecordManager;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljdbm/recman/CacheRecordManager$CacheListener;->this$0:Ljdbm/recman/CacheRecordManager;

    return-void
.end method

.method synthetic constructor <init>(Ljdbm/recman/CacheRecordManager;Ljdbm/recman/CacheRecordManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljdbm/recman/CacheRecordManager;
    .param p2, "x1"    # Ljdbm/recman/CacheRecordManager$1;

    .line 434
    invoke-direct {p0, p1}, Ljdbm/recman/CacheRecordManager$CacheListener;-><init>(Ljdbm/recman/CacheRecordManager;)V

    return-void
.end method


# virtual methods
.method public cacheObjectEvicted(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation

    .line 446
    move-object v0, p1

    check-cast v0, Ljdbm/recman/CacheRecordManager$CacheEntry;

    .line 447
    .local v0, "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    iget-boolean v1, v0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    if-eqz v1, :cond_0

    .line 449
    :try_start_0
    iget-object v1, p0, Ljdbm/recman/CacheRecordManager$CacheListener;->this$0:Ljdbm/recman/CacheRecordManager;

    iget-object v1, v1, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    iget-wide v2, v0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_recid:J

    iget-object v4, v0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    iget-object v5, v0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    invoke-interface {v1, v2, v3, v4, v5}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "except":Ljava/io/IOException;
    new-instance v2, Ljdbm/helper/CacheEvictionException;

    invoke-direct {v2, v1}, Ljdbm/helper/CacheEvictionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 454
    .end local v1    # "except":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
