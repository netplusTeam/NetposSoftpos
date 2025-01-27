.class Lcom/hivemq/client/internal/util/collections/Index$Node;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field final hash:I

.field next:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "next"    # Ljava/lang/Object;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput p1, p0, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    .line 444
    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    .line 445
    iput-object p3, p0, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 446
    return-void
.end method
