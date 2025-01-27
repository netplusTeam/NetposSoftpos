.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda74;->f$0:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .locals 1

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda74;->f$0:I

    invoke-static {v0, p1, p2}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$toColumns$26(III)I

    move-result p1

    return p1
.end method
