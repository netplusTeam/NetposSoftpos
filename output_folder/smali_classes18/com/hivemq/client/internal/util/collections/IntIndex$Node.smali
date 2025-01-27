.class Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
.super Ljava/lang/Object;
.source "IntIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/IntIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field final key:I

.field next:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "next"    # Ljava/lang/Object;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    .line 427
    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    .line 428
    iput-object p3, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 429
    return-void
.end method
