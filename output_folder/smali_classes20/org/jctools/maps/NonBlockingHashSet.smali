.class public Lorg/jctools/maps/NonBlockingHashSet;
.super Ljava/util/AbstractSet;
.source "NonBlockingHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final V:Ljava/lang/Object;


# instance fields
.field private final _map:Lorg/jctools/maps/NonBlockingHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingHashMap<",
            "TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, ""

    sput-object v0, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0}, Lorg/jctools/maps/NonBlockingHashMap;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/jctools/maps/NonBlockingHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 57
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->getk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 55
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashSet;, "Lorg/jctools/maps/NonBlockingHashSet<TE;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result v0

    return v0
.end method
