.class Lcom/google/common/collect/Streams$1OptionalState;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalState"
.end annotation


# instance fields
.field set:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 863
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    .line 864
    iput-object p1, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    .line 865
    return-void
.end method
