.class public Lio/netty/handler/codec/http/DefaultCookie;
.super Lio/netty/handler/codec/http/cookie/DefaultCookie;
.source "DefaultCookie.java"

# interfaces
.implements Lio/netty/handler/codec/http/Cookie;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private commentUrl:Ljava/lang/String;

.field private discard:Z

.field private ports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private unmodifiablePorts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 36
    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 44
    return-void
.end method


# virtual methods
.method public comment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public commentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->commentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->maxAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPorts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->ports()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultCookie;->version()I

    move-result v0

    return v0
.end method

.method public isDiscard()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-boolean v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->discard:Z

    return v0
.end method

.method public ports()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 130
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const-string v0, "comment"

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCommentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "commentUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    const-string v0, "commentUrl"

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    iput-boolean p1, p0, Lio/netty/handler/codec/http/DefaultCookie;->discard:Z

    .line 116
    return-void
.end method

.method public setPorts(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    .local p1, "ports":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 158
    .local v0, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, "p":I
    if-lez v2, :cond_0

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "p":I
    goto :goto_0

    .line 160
    .restart local v2    # "p":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v2    # "p":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_1

    .line 167
    :cond_2
    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 170
    :goto_1
    return-void
.end method

.method public varargs setPorts([I)V
    .locals 6
    .param p1, "ports"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const-string v0, "ports"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 139
    .local v0, "portsCopy":[I
    array-length v1, v0

    if-nez v1, :cond_0

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_1

    .line 142
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 143
    .local v1, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 144
    .local v4, "p":I
    if-lez v4, :cond_1

    const v5, 0xffff

    if-gt v4, v5, :cond_1

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v4    # "p":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .restart local v4    # "p":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port out of range: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v4    # "p":I
    :cond_2
    iput-object v1, p0, Lio/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 152
    .end local v1    # "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iput p1, p0, Lio/netty/handler/codec/http/DefaultCookie;->version:I

    .line 194
    return-void
.end method

.method public version()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget v0, p0, Lio/netty/handler/codec/http/DefaultCookie;->version:I

    return v0
.end method
