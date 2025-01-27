.class Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;
.super Ljava/lang/Object;
.source "CharCollections.java"

# interfaces
.implements Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/CharCollections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/CharObjectMap$PrimitiveEntry<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final entry:Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/CharObjectMap$PrimitiveEntry<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/collection/CharCollections$UnmodifiableMap;


# direct methods
.method constructor <init>(Lio/netty/util/collection/CharCollections$UnmodifiableMap;Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/collection/CharObjectMap$PrimitiveEntry<",
            "TV;>;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;, "Lio/netty/util/collection/CharCollections$UnmodifiableMap<TV;>.EntryImpl;"
    .local p2, "entry":Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;, "Lio/netty/util/collection/CharObjectMap$PrimitiveEntry<TV;>;"
    iput-object p1, p0, Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;->this$0:Lio/netty/util/collection/CharCollections$UnmodifiableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;

    .line 295
    return-void
.end method


# virtual methods
.method public key()C
    .locals 1

    .line 299
    .local p0, "this":Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;, "Lio/netty/util/collection/CharCollections$UnmodifiableMap<TV;>.EntryImpl;"
    iget-object v0, p0, Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;

    invoke-interface {v0}, Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;->key()C

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;, "Lio/netty/util/collection/CharCollections$UnmodifiableMap<TV;>.EntryImpl;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setValue"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;, "Lio/netty/util/collection/CharCollections$UnmodifiableMap<TV;>.EntryImpl;"
    iget-object v0, p0, Lio/netty/util/collection/CharCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;

    invoke-interface {v0}, Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
