.class Lcom/itextpdf/kernel/xmp/impl/XMPNode$1;
.super Ljava/lang/Object;
.source "XMPNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 412
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode$1;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    iput-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove() is not allowed due to the internal contraints"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
