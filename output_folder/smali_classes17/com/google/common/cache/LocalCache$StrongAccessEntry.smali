.class final Lcom/google/common/cache/LocalCache$StrongAccessEntry;
.super Lcom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$StrongEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 986
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V

    .line 991
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1004
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1017
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 987
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 995
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1008
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1021
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1000
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1001
    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1013
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1014
    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1026
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessEntry;, "Lcom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1027
    return-void
.end method
