.class public Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
.super Ljava/lang/Object;
.source "IntIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/IntIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_CAPACITY:I = 0x10

.field private static final DEFAULT_NODE_THRESHOLD_FACTOR:F = 0.25f


# instance fields
.field final keyFunction:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final minCapacity:I

.field final nodeThresholdFactor:F


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;, "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<TE;>;"
    .local p1, "keyFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TE;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;IF)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/function/ToIntFunction;F)V
    .locals 1
    .param p2, "nodeThresholdFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;F)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;, "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<TE;>;"
    .local p1, "keyFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TE;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/function/ToIntFunction;I)V
    .locals 1
    .param p2, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;, "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<TE;>;"
    .local p1, "keyFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TE;>;"
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;IF)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/function/ToIntFunction;IF)V
    .locals 0
    .param p2, "minCapacity"    # I
    .param p3, "nodeThresholdFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;IF)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;, "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<TE;>;"
    .local p1, "keyFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    .line 63
    iput p2, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    .line 64
    iput p3, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->nodeThresholdFactor:F

    .line 65
    return-void
.end method
