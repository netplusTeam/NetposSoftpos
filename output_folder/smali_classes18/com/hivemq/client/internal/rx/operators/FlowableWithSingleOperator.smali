.class abstract Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;
.super Lcom/hivemq/client/rx/FlowableWithSingle;
.source "FlowableWithSingleOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FU:",
        "Ljava/lang/Object;",
        "SU:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/rx/FlowableWithSingle<",
        "TF;TS;>;"
    }
.end annotation


# instance fields
.field final source:Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TFU;TSU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TFU;TSU;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator<TFU;TSU;TF;TS;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TFU;TSU;>;"
    invoke-direct {p0}, Lcom/hivemq/client/rx/FlowableWithSingle;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    .line 31
    return-void
.end method
