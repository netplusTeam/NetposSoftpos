.class public Lcom/hivemq/client/internal/util/collections/Index$Spec;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_CAPACITY:I = 0x10

.field private static final DEFAULT_NODE_THRESHOLD_FACTOR:F = 0.25f


# instance fields
.field final keyFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TE;+TK;>;"
        }
    .end annotation
.end field

.field final minCapacity:I

.field final nodeThresholdFactor:F


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TE;+TK;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index$Spec;, "Lcom/hivemq/client/internal/util/collections/Index$Spec<TE;TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TE;+TK;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, v0, v1}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;IF)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;F)V
    .locals 1
    .param p2, "nodeThresholdFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TE;+TK;>;F)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index$Spec;, "Lcom/hivemq/client/internal/util/collections/Index$Spec<TE;TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TE;+TK;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;I)V
    .locals 1
    .param p2, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TE;+TK;>;I)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index$Spec;, "Lcom/hivemq/client/internal/util/collections/Index$Spec<TE;TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TE;+TK;>;"
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, p2, v0}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;IF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;IF)V
    .locals 0
    .param p2, "minCapacity"    # I
    .param p3, "nodeThresholdFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TE;+TK;>;IF)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index$Spec;, "Lcom/hivemq/client/internal/util/collections/Index$Spec<TE;TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TE;+TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    .line 64
    iput p2, p0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    .line 65
    iput p3, p0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->nodeThresholdFactor:F

    .line 66
    return-void
.end method
