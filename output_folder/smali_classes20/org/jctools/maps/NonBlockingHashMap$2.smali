.class Lorg/jctools/maps/NonBlockingHashMap$2;
.super Ljava/util/AbstractSet;
.source "NonBlockingHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TTypeK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingHashMap;

    .line 1308
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1309
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1311
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTypeK;>;"
        }
    .end annotation

    .line 1313
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1312
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1310
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1317
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$2;, "Lorg/jctools/maps/NonBlockingHashMap$2;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->raw_array()[Ljava/lang/Object;

    move-result-object v0

    .line 1319
    .local v0, "kvs":[Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$2;->size()I

    move-result v1

    .line 1320
    .local v1, "sz":I
    array-length v2, p1

    if-lt v2, v1, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 1321
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    :goto_0
    nop

    .line 1323
    .local v2, "r":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 1324
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1325
    invoke-static {v0, v4}, Lorg/jctools/maps/NonBlockingHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 1326
    .local v5, "K":Ljava/lang/Object;
    invoke-static {v0, v4}, Lorg/jctools/maps/NonBlockingHashMap;->access$1500([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/jctools/maps/NonBlockingHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1327
    .local v6, "V":Ljava/lang/Object;
    if-eqz v5, :cond_3

    sget-object v7, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v5, v7, :cond_3

    if-eqz v6, :cond_3

    sget-object v7, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v6, v7, :cond_3

    .line 1328
    array-length v7, v2

    if-lt v3, v7, :cond_2

    .line 1329
    const-wide/32 v7, 0x7ffffff7

    int-to-long v9, v3

    const/4 v11, 0x1

    shl-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 1330
    .local v7, "sz2":I
    array-length v8, v2

    if-le v7, v8, :cond_1

    .line 1331
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1330
    :cond_1
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1333
    .end local v7    # "sz2":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "j":I
    .local v7, "j":I
    aput-object v5, v2, v3

    move v3, v7

    .line 1324
    .end local v5    # "K":Ljava/lang/Object;
    .end local v6    # "V":Ljava/lang/Object;
    .end local v7    # "j":I
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1336
    .end local v4    # "i":I
    :cond_4
    array-length v4, p1

    if-gt v3, v4, :cond_7

    .line 1337
    if-eq p1, v2, :cond_5

    const/4 v4, 0x0

    invoke-static {v2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1338
    :cond_5
    array-length v4, p1

    if-ge v3, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    const/4 v5, 0x0

    aput-object v5, v2, v3

    move v3, v4

    .line 1339
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_6
    return-object p1

    .line 1341
    :cond_7
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
