.class public abstract Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.super Ljava/lang/Object;
.source "NodeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "Lcom/hivemq/client/internal/util/collections/NodeList$Node<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "Lcom/hivemq/client/internal/util/collections/NodeList$Node<TN;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method

.method public getPrev()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "Lcom/hivemq/client/internal/util/collections/NodeList$Node<TN;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method
