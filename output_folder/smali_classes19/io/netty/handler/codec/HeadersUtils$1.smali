.class final Lio/netty/handler/codec/HeadersUtils$1;
.super Ljava/util/AbstractList;
.source "HeadersUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/HeadersUtils;->getAllAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allNames:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/netty/handler/codec/HeadersUtils$1;->val$allNames:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/HeadersUtils$1;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/HeadersUtils$1;->val$allNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lio/netty/handler/codec/HeadersUtils$1;->val$allNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
