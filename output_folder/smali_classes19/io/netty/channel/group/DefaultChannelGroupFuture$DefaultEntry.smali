.class final Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;, "Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;->key:Ljava/lang/Object;

    .line 241
    iput-object p2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;->value:Ljava/lang/Object;

    .line 242
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;, "Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;, "Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;, "Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
