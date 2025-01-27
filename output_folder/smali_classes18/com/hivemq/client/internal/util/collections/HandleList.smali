.class public Lcom/hivemq/client/internal/util/collections/HandleList;
.super Lcom/hivemq/client/internal/util/collections/NodeList;
.source "HandleList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/util/collections/NodeList<",
        "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<TE;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "TE;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;-><init>(Ljava/lang/Object;)V

    .line 43
    .local v0, "handle":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<TE;>;"
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/util/collections/HandleList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 44
    return-object v0
.end method
