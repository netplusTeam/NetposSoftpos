.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;
.super Ljava/lang/Object;
.source "FlowableWithSingleCombine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleElement"
.end annotation


# instance fields
.field final element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "element"    # Ljava/lang/Object;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;->element:Ljava/lang/Object;

    .line 260
    return-void
.end method
