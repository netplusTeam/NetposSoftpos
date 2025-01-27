.class public final synthetic Lorg/jline/utils/Colors$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/utils/Colors$Distance;


# instance fields
.field public final synthetic f$0:[D


# direct methods
.method public synthetic constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda9;->f$0:[D

    return-void
.end method


# virtual methods
.method public final compute(II)D
    .locals 1

    iget-object v0, p0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda9;->f$0:[D

    invoke-static {v0, p1, p2}, Lorg/jline/utils/Colors;->lambda$doGetDistance$6([DII)D

    move-result-wide p1

    return-wide p1
.end method
