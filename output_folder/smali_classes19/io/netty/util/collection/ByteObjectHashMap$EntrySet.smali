.class final Lio/netty/util/collection/ByteObjectHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ByteObjectHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ByteObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Byte;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/collection/ByteObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/ByteObjectHashMap;)V
    .locals 0

    .line 519
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$EntrySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.EntrySet;"
    iput-object p1, p0, Lio/netty/util/collection/ByteObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/collection/ByteObjectHashMap;Lio/netty/util/collection/ByteObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/collection/ByteObjectHashMap;
    .param p2, "x1"    # Lio/netty/util/collection/ByteObjectHashMap$1;

    .line 519
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$EntrySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/ByteObjectHashMap$EntrySet;-><init>(Lio/netty/util/collection/ByteObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "TV;>;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$EntrySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.EntrySet;"
    new-instance v0, Lio/netty/util/collection/ByteObjectHashMap$MapIterator;

    iget-object v1, p0, Lio/netty/util/collection/ByteObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/ByteObjectHashMap$MapIterator;-><init>(Lio/netty/util/collection/ByteObjectHashMap;Lio/netty/util/collection/ByteObjectHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 527
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$EntrySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.EntrySet;"
    iget-object v0, p0, Lio/netty/util/collection/ByteObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v0}, Lio/netty/util/collection/ByteObjectHashMap;->size()I

    move-result v0

    return v0
.end method
