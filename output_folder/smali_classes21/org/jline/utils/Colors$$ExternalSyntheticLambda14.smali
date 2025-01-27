.class public final synthetic Lorg/jline/utils/Colors$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/utils/Colors$Distance;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compute(II)D
    .locals 1

    iget-object v0, p0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/jline/utils/Colors;->lambda$doGetDistance$11(Ljava/lang/String;II)D

    move-result-wide p1

    return-wide p1
.end method
